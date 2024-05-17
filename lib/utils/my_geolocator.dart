import 'package:geolocator/geolocator.dart';

class MyGeolocator extends GeolocatorPlatform {
  static final MyGeolocator _singleton = MyGeolocator._internal();

  factory MyGeolocator() {
    return _singleton;
  }

  MyGeolocator._internal();
}
