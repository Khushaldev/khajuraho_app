import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status == PermissionStatus.granted;
  }
}
