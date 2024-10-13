import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';
import '../utils/helpers/log.dart';
import 'startup.dart';

class InitFirebase implements LaunchObjects {
  const InitFirebase();

  @override
  Future<void> initialize() async {
    final firebaseApp = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    Log.debug('FirebaseApp initialized ${firebaseApp.name}');
  }

  @override
  Future<void> dispose() async {}
}
