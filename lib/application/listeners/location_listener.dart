import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart' as l;

import '../../utils/helpers/log.dart';

@singleton
class LocationListener {
  LocationListener();

  bool _serviceEnabled = false;
  l.LocationData? _locationData;
  late l.PermissionStatus _permissionGranted;

  final l.Location location = l.Location();

  final StreamController<l.LocationData?> _locationDataStreamController =
      StreamController<l.LocationData?>.broadcast();

  Stream<l.LocationData?> get locationDataStream => //
      _locationDataStreamController.stream;

  final StreamController<String?> _currentLocationController =
      StreamController<String?>.broadcast();

  Stream<String?> get currentLocationStream => _currentLocationController.stream;

  Future<void> start() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return; // If service is still disabled, exit
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == l.PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != l.PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    if (_locationData != null) {
      _updateCurrentLocation(_locationData!);
    }

    location.onLocationChanged.listen((l.LocationData locationData) async {
      _updateCurrentLocation(locationData);
    });
  }

  void _updateCurrentLocation(l.LocationData locationData) async {
    final double? latitude = locationData.latitude;
    final double? longitude = locationData.longitude;

    if (latitude != null && longitude != null) {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        latitude,
        longitude,
      );

      if (placemarks.isNotEmpty) {
        final firstPlacemark = placemarks.first;
        if (firstPlacemark.locality != null &&
            firstPlacemark.street != null &&
            firstPlacemark.country != null &&
            firstPlacemark.subLocality != null &&
            firstPlacemark.administrativeArea != null) {
          final location = [
            if (firstPlacemark.street!.isNotEmpty) firstPlacemark.street,
            if (firstPlacemark.subLocality!.isNotEmpty) firstPlacemark.subLocality,
            if (firstPlacemark.locality!.isNotEmpty) firstPlacemark.locality,
            if (firstPlacemark.administrativeArea!.isNotEmpty) firstPlacemark.administrativeArea,
          ].join(', ');

          Log.info(location);
          _currentLocationController.add(location);
          _locationDataStreamController.add(locationData);
        }
      }
    }
  }

  void dispose() {
    _locationDataStreamController.close();
  }
}
