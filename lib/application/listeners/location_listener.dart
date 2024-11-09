import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart' as l;

@singleton
class LocationListener {
  LocationListener();

//------------------------------------------------------------------------------

  final l.Location location = l.Location();

  bool _serviceEnabled = false;

  l.LocationData? _locationData;

  late l.PermissionStatus _permissionGranted;

  StreamSubscription<l.LocationData?>? _locationsubscription;

  StreamController<l.LocationData?> _locationDataStreamController =
      StreamController<l.LocationData?>.broadcast();

  StreamController<String?> _currentLocationController = //
      StreamController<String?>.broadcast();

  Stream<l.LocationData?> get locationDataStream {
    return _locationDataStreamController.stream;
  }

  Stream<String?> get currentLocationStream {
    return _currentLocationController.stream;
  }

//------------------------------------------------------------------------------

  Future<void> start() async {
    _locationDataStreamController = StreamController<l.LocationData?>.broadcast();
    _currentLocationController = StreamController<String?>.broadcast();

    final bool hasLocationPermission = await _checkPermission();

    if (!hasLocationPermission) return;

    _locationData = await location.getLocation();
    if (_locationData != null) {
      _updateCurrentLocation(_locationData!);
    }

    _locationsubscription = location.onLocationChanged.listen((
      l.LocationData locationData,
    ) async {
      _updateCurrentLocation(locationData);
    });
  }

//------------------------------------------------------------------------------

  Future<bool> _checkPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      // If service is still disabled, return falses
      if (!_serviceEnabled) return false;
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == l.PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      // If permission is still not granted, return false
      if (_permissionGranted != l.PermissionStatus.granted) return false;
    }

    if (_permissionGranted == l.PermissionStatus.granted) return true;

    return false;
  }

//------------------------------------------------------------------------------

  void _updateCurrentLocation(l.LocationData locationData) async {
    final double? latitude = locationData.latitude;
    final double? longitude = locationData.longitude;

    if (latitude != null && longitude != null) {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        latitude,
        longitude,
      );

      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        // if (placemark.locality != null &&
        //     placemark.street != null &&
        //     placemark.country != null &&
        //     placemark.subLocality != null &&
        //     placemark.administrativeArea != null) {
        //   final location = [
        //     if (placemark.street!.isNotEmpty) placemark.street,
        //     if (placemark.subLocality!.isNotEmpty) placemark.subLocality,
        //     if (placemark.locality!.isNotEmpty) placemark.locality,
        //     if (placemark.administrativeArea!.isNotEmpty) placemark.administrativeArea,
        //   ].join(', ');
        // }

        final location = [
          placemark.street,
          placemark.subLocality,
          placemark.locality,
          placemark.administrativeArea,
        ].where((e) => e?.isNotEmpty ?? false).join(', ');

        _currentLocationController.add(location);
        _locationDataStreamController.add(locationData);
      }
    }
  }

  Future<void> stop() async {
    await Future.wait([
      _locationDataStreamController.close(),
      _currentLocationController.close(),
    ]);

    await _locationsubscription?.cancel();
  }
}
