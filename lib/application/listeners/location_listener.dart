import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

@singleton
class LocationPermissionService {
  LocationPermissionService();

  bool _serviceEnabled = false;
  LocationData? _locationData;
  late PermissionStatus _permissionGranted;

  final Location location = Location();

  final StreamController<LocationData?> _locationDataStreamController =
      StreamController<LocationData?>.broadcast();

  Stream<LocationData?> get locationDataStream => //
      _locationDataStreamController.stream;

  Future<void> start() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return; // If service is still disabled, exit
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    _locationDataStreamController.add(_locationData);

    location.onLocationChanged.listen((LocationData locationData) {
      _locationDataStreamController.add(locationData);
    });
  }

  void dispose() {
    _locationDataStreamController.close();
  }
}
