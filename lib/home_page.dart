import 'package:flutter/material.dart';
import 'package:live_weather_api_demo/location_service.dart';
import 'package:location/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  LocationData? locationData;

  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Weather Api Demo"),
      ),
      body: Center(
        child: Text("Latitude=${locationData?.latitude}\nLongitude=${locationData?.longitude}",
        style: const TextStyle(fontSize: 32))
      ),
    );
  }

   getUserLocation() async {
    final currentLocation = await LocationService().getPosition();
    setState(() {
      locationData = currentLocation;
    });
   }

}
