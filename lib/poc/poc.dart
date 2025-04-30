import 'package:flutter/material.dart';
import 'package:flutter_app_stable/page.dart';
import 'package:flutter_app_stable/poc/poc_list.dart';
import 'package:flutter_app_stable/poc/poc_map.dart';
import 'package:flutter_app_stable/poc/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

class Poc extends GoogleMapExampleAppPage {
  const Poc({super.key}) : super(const Icon(Icons.biotech), 'Poc');

  @override
  Widget build(BuildContext context) {
    return _Screen();
  }
}

class _Screen extends StatefulWidget {
  const _Screen();

  @override
  State<_Screen> createState() => __ScreenState();
}

class __ScreenState extends State<_Screen> {
  Position? _currentPosition;

  @override
  void initState() {
    super.initState();
    _getCurrentPosition();
  }

  void _getCurrentPosition() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        throw Exception('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permissions are denied, next time you could try
          // requesting permissions again (this is also where
          // Android's shouldShowRequestPermissionRationale
          // returned true. According to Android guidelines
          // your App should show an explanatory UI now.
          throw Exception('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.',
        );
      }

      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.

      final currentPosition = await Geolocator.getCurrentPosition();
      setState(() {
        _currentPosition = currentPosition;
      });
    } catch (e) {
      // While the current location is blocked by the system, we mock it.
      setState(() {
        _currentPosition = Position(
          latitude: 1.290270,
          longitude: 103.851959,
          timestamp: DateTime.now(),
          accuracy: 0,
          altitude: 0,
          heading: 0,
          speed: 0,
          speedAccuracy: 0,
          altitudeAccuracy: 0,
          headingAccuracy: 0,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [positionProvider.overrideWithValue(_currentPosition)],
      child: Column(
        children: [
          _MoreButton(),
          Expanded(
            child: Row(
              children: [
                Expanded(child: PocList()),
                Expanded(flex: 2, child: PocMap()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MoreButton extends ConsumerWidget {
  const _MoreButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      child: const Text('Add more locations'),
      onPressed: () {
        addMoreLocations(ref);
      },
    );
  }
}
