import 'package:geocoding/geocoding.dart';

class MyGeocoder extends GeocodingPlatform {
  static final MyGeocoder _singleton = MyGeocoder._internal();

  factory MyGeocoder() {
    return _singleton;
  }

  MyGeocoder._internal();
}
