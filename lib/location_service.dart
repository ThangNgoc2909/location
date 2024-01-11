import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class GeolocationService {
  GeolocationService._();

  static final GeolocationService _instance = GeolocationService._();

  factory GeolocationService() {
    return _instance;
  }

  Future<void> _checkPermission() async {
    final PermissionStatus locationPermission = await Permission.location.status;
  }

  // Future<Position> determinePosition() async {
  //   bool serviceEnabled;
  //   PermissionStatus permissionGranted;
  //
  //   serviceEnabled = await _location.serviceEnabled();
  //   if (!serviceEnabled) {
  //     serviceEnabled = await _location.requestService();
  //     if (!serviceEnabled) {
  //       return Future.error('Location permissions are denied');
  //     }
  //   }
  //
  //   permissionGranted = await _location.hasPermission();
  //   if (permissionGranted == PermissionStatus.denied) {
  //     permissionGranted = await _location.requestPermission();
  //     if (permissionGranted != PermissionStatus.granted) {
  //       return Future.error('Location permissions are denied');
  //     }
  //   }
  //
  //   final currentLocation = await Geolocator.getCurrentPosition();
  //   return currentLocation;
  // }
}
