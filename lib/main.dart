import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _mapController = MapController();

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            // Use the recommended flutter_map_cancellable_tile_provider package to
            // support the cancellation of loading tiles.
            tileProvider: CancellableNetworkTileProvider(),
          ),
          CircleLayer(
            circles: [
              CircleMarker(
                point: const LatLng(51.4937, -0.6638),
                // Dorney Lake is ~2km long
                color: Colors.green.withAlpha(229),
                borderStrokeWidth: 4,
                borderColor: Colors.black,
                useRadiusInMeter: true,
                radius: 1000,
                // 1000 meters
                hitValue: (
                  title: 'Green',
                  subtitle: 'Radius in meters, calibrated over ~2km rowing lake'
                ),
              ),
            ],
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(47.18664724067855, -1.5436768515939427),
                width: 64,
                height: 64,
                alignment: Alignment.topCenter,
                child: const Icon(Icons.location_pin,
                    size: 60, color: Colors.black),
              ),
              Marker(
                point: LatLng(49.18664724067855, 1.5436768515939427),
                width: 64,
                height: 64,
                alignment: Alignment.centerRight,
                child: ColoredBox(
                  color: Colors.pink,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('<--'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
