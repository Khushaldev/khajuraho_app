import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../utils/helpers/log.dart';
import '../user_profile.dart';
import 'app_state.dart';

// void dispose(AppStore instance) => instance.dispose();

// @Singleton(dispose: dispose)
// class AppStore {
//   AppStore() {
//     _initCache();
//   }

//   final String _collectionName = 'userProfile';

//   late final File _file;

//   final StreamController<AppState> _appStateStreamController = StreamController.broadcast();

//   Stream<AppState> get appStateStream => _appStateStreamController.stream;

//   AppState _cache = AppState.empty;

//   AppState get appState => _cache;

//   set appState(AppState newState) {
//     _cache = newState;
//     _appStateStreamController.add(_cache);
//     _updateJsonFile();
//   }

//   @protected

//   /// Initializes the cache from the local file.
//   ///
//   /// If the file does not exist or is empty, it does nothing.
//   ///
//   /// If the file contains a valid JSON, it decodes it and updates the cache.
//   /// If the cache is empty after decoding, it does nothing.
//   ///
//   /// If the cache is not empty, it adds the cache to the stream.
//   ///
//   /// If an exception occurs, it rethrows the exception.
//   Future<void> _initCache() async {
//     try {
//       _file = await _getLocalFile();

//       if (!await _file.exists()) return;

//       final content = await _file.readAsString();
//       final Map<String, dynamic> decodedJson = jsonDecode(content);

//       if (decodedJson.isEmpty) return;

//       final updatedAppState = AppState.fromJson(decodedJson);
//       final Map<String, dynamic> updatedCustomer =
//           await _getUpdatedUser(updatedAppState.userProfile.id) ?? //
//               // Customer.visitor.toJson();
//               {};

//       _cache = updatedAppState.copyWith(
//         userProfile: UserProfile.fromJson(
//           updatedCustomer,
//         ),
//       );

//       if (_cache == AppState.empty) return;

//       _appStateStreamController.add(_cache);
//     } catch (_) {
//       rethrow;
//     }
//   }

//   @protected
//   Future<Map<String, dynamic>?> _getUpdatedUser(String id) async {
//     final DocumentSnapshot document = await FirestoreService.read(
//       collectionName: _collectionName,
//       docId: id,
//     );

//     final data = document.data();
//     return data is Map<String, dynamic> ? data : null;
//   }

//   /// Returns the local file where the app state is saved.
//   ///
//   /// The file is stored in the app's documents directory, and is named
//   /// `app_cache.json`.
//   ///
//   /// The file is created if it does not exist.
//   @protected
//   Future<File> _getLocalFile() async {
//     final Directory directory = await getApplicationDocumentsDirectory();
//     return File('${directory.path}/app_cache.json');
//   }

//   @protected
//   Future<void> _updateJsonFile() async {
//     await _file.writeAsString(jsonEncode(_cache.toJson()));
//   }

//   void dispose() {
//     _appStateStreamController.close();
//   }
// }

@Singleton()
class AppStore {
  AppStore() {
    _initCache();
  }

  late File _file;

  AppState _cache = AppState.empty;

  AppState get appState => _cache;

  set appState(AppState newState) {
    _cache = newState;
    _updateJsonFile();
  }

  Future<void> _initCache() async {
    Log.debug('Cache Initialized');

    final String path = await _getPath();

    _file = File(path);

    if (!await _file.exists()) {
      await _file.writeAsString('{}');
      return;
    }

    final content = await _file.readAsString();
    final Map<String, dynamic> decodedJson = jsonDecode(content);

    if (decodedJson.isEmpty) return;

    _cache = AppState.fromJson(decodedJson);
  }

  Future<String> _getPath() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/khajuraho_storage.json';
  }

  Future<void> _updateJsonFile() async {
    await _file.writeAsString(jsonEncode(_cache.toJson()));
  }

  Future<void> setUserProfile(UserProfile userProfile) async {
    _cache = _cache.copyWith(userProfile: userProfile);
    await _updateJsonFile();
  }
}
