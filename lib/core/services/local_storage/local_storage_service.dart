import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';

// TODO: remove type casting using [as] keyword

class HiveTTLWrapper {
  HiveTTLWrapper({required this.value, this.expiry});

  factory HiveTTLWrapper.fromMap(Map<dynamic, dynamic> map) {
    return HiveTTLWrapper(
      value: map['value'],
      expiry: map['expiry'] != null //
          ? DateTime.parse(map['expiry'] as String)
          : null,
    );
  }

  final dynamic value;
  final DateTime? expiry;

  bool get isExpired => expiry != null && DateTime.now().isAfter(expiry!);

  Map<String, dynamic> toMap() => {
        'value': value,
        'expiry': expiry?.toIso8601String(),
      };
}

class HiveStorageService {
  HiveStorageService._internal();
  factory HiveStorageService() => _instance;
  static final HiveStorageService _instance = HiveStorageService._internal();

  static const String _boxName = 'app_storage';

  late final Box<dynamic> _box;
  final StreamController<Map<String, dynamic>> _controller = StreamController.broadcast();

  Stream<Map<String, dynamic>> get stream => _controller.stream;

  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox(_boxName);
    _cleanupExpired();
    _emitValidData();
  }

  Future<void> put(
    String key,
    dynamic value, {
    Duration? ttl,
  }) async {
    final wrapper = HiveTTLWrapper(
      value: value,
      expiry: ttl != null ? DateTime.now().add(ttl) : null,
    );
    await _box.put(key, wrapper.toMap());
    _emitValidData();
  }

  Future<void> putAll<T>(Map<String, T> entries, {Duration? ttl}) async {
    final DateTime? expiry = ttl != null ? DateTime.now().add(ttl) : null;
    final map = entries.map(
      (key, value) => MapEntry(
        key,
        HiveTTLWrapper(value: value, expiry: expiry).toMap(),
      ),
    );
    await _box.putAll(map);
    _emitValidData();
  }

  Map<String, dynamic>? safeCastToStringMap(dynamic raw) {
    if (raw is Map) {
      return Map<String, dynamic>.from(raw);
    }

    return null;
  }

  dynamic get(String key) {
    final raw = _box.get(key);
    if (raw == null || raw is! Map) {
      return null;
    }

    final stringMap = safeCastToStringMap(raw);
    if (stringMap == null) {
      return null;
    }

    final wrapper = HiveTTLWrapper.fromMap(stringMap);
    if (wrapper.isExpired) {
      _box.delete(key);
      _emitValidData();
      return null;
    }

    return wrapper.value;
  }

  Map<String, T> getAll<T>() {
    final map = <String, T>{};
    final keysToDelete = <String>[];

    for (final entry in _box.toMap().entries) {
      final key = entry.key as String;
      final value = entry.value as Map<dynamic, dynamic>;
      final wrapper = HiveTTLWrapper.fromMap(value);
      if (wrapper.isExpired) {
        keysToDelete.add(key);
      } else if (wrapper.value is T) {
        map[key] = wrapper.value as T;
      }
    }

    if (keysToDelete.isNotEmpty) {
      _box.deleteAll(keysToDelete);
    }

    _emitValidData();

    return map;
  }

  Future<void> delete(String key) async {
    await _box.delete(key);
    _emitValidData();
  }

  Future<void> deleteMany(List<String> keys) async {
    await _box.deleteAll(keys);
    _emitValidData();
  }

  Future<void> deleteAll() async {
    await _box.clear();
    _emitValidData();
  }

  Future<void> close() async {
    await _box.close();
    await _controller.close();
  }

  void _emitValidData() {
    final validMap = <String, dynamic>{};
    for (final entry in _box.toMap().entries) {
      final key = entry.key as String;
      final value = entry.value as Map<dynamic, dynamic>;
      final wrapper = HiveTTLWrapper.fromMap(value);
      if (!wrapper.isExpired) {
        validMap[key] = wrapper.value;
      }
    }
    _controller.add(validMap);
  }

  void _cleanupExpired() {
    final keysToDelete = <String>[];
    for (final entry in _box.toMap().entries) {
      final key = entry.key as String;
      final value = entry.value as Map<dynamic, dynamic>;
      final wrapper = HiveTTLWrapper.fromMap(value);
      if (wrapper.isExpired) {
        keysToDelete.add(key);
      }
    }
    if (keysToDelete.isNotEmpty) {
      _box.deleteAll(keysToDelete);
      _emitValidData();
    }
  }
}
