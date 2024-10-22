import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../utils/helpers/log.dart';
import '../user_profile.dart';
import 'app_state.dart';

@Singleton()
class AppStore {
  AppStore() {
    _initCache();
  }

  late File _file;

  final StreamController<UserProfile> _userProfileController =
      StreamController<UserProfile>.broadcast();

  Stream<UserProfile> get userProfileStream {
    return _userProfileController.stream;
  }

  AppState _cache = AppState.empty;

  AppState get appState => _cache;

  set appState(AppState newState) {
    _cache = newState;
    _userProfileController.add(newState.userProfile);
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
