import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_weather_api_demo/geo_position.dart';
import 'package:location/location.dart';

class LocationService {

  // Get user location
  Future<LocationData?> getPosition() async {
    try {
      Location location = Location();
      return location.getLocation();
    } on PlatformException catch (error) {
      debugPrint("unable to get location : ${error.message}");
      return null;
    }
  }

  // convert (lat,lon) -> city name
  // Future<GeoPosition?> getCity() {

  // }

 }