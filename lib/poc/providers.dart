import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

final positionProvider = Provider.autoDispose<Position?>((ref) {
  return null;
});

class Hospital {
  const Hospital({required this.id, required this.location});
  final String id;

  final LatLng location;
}

class Doctor {
  const Doctor({required this.id, required this.hospitals});

  final String id;

  final List<Hospital> hospitals;
}

const _latLongList = [
  LatLng(1.290270, 103.851959),
  LatLng(1.2722874259435162, 103.80139985186842),
  LatLng(1.2778045977991226, 103.85317472842608),
  LatLng(1.2547034288959993, 103.82417633743964),
  LatLng(1.3559136056794798, 103.98951369164512),
  LatLng(1.2978068405391898, 103.7766800909509),
  LatLng(1.4538548998846756, 103.78044310033633),
  LatLng(1.2917269855349574, 103.61947304647579),
];

const _minLat = 1.2547;
const _maxLat = 1.4538;
const _minLong = 103.6194;
const _maxLong = 103.9895;

final _doctorsProvider = StateProvider.autoDispose<List<Doctor>>((ref) {
  return [
    Doctor(
      id: '0',
      hospitals:
          _latLongList
              .mapIndexed(
                (index, location) =>
                    Hospital(id: '0_$index', location: location),
              )
              .toList(),
    ),
  ];
});

void addMoreDoctors(WidgetRef ref) {
  final currentList = ref.read(_doctorsProvider);
  final newList =
      List<Doctor>.from(currentList).followedBy([
        for (var i = 0; i < 10; i++)
          Doctor(
            id: '${currentList.length + i}',
            hospitals:
                _getMoreLocations()
                    .mapIndexed(
                      (index, location) => Hospital(
                        id: '${currentList.length + i}_$index',
                        location: location,
                      ),
                    )
                    .toList(),
          ),
      ]).toList();
  ref.read(_doctorsProvider.notifier).state = newList;
}

List<LatLng> _getMoreLocations() {
  final locations = <LatLng>[];

  for (var i = 0; i < 10; i++) {
    final random = math.Random();
    final lat = random.nextDouble() * (_maxLat - _minLat) + _minLat;
    final long = random.nextDouble() * (_maxLong - _minLong) + _minLong;
    locations.add(LatLng(lat, long));
  }
  return locations;
}

final doctorsProvider = FutureProvider.autoDispose<List<Doctor>>((ref) async {
  return ref.watch(_doctorsProvider);
});

double getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2) {
  var R = 6371; // Radius of the earth in km
  var dLat = deg2rad(lat2 - lat1); // deg2rad below
  var dLon = deg2rad(lon2 - lon1);
  var a =
      math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(deg2rad(lat1)) *
          math.cos(deg2rad(lat2)) *
          math.sin(dLon / 2) *
          math.sin(dLon / 2);
  var c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  var d = R * c; // Distance in km
  return d;
}

double deg2rad(deg) {
  return deg * (math.pi / 180);
}

final itemScrollControllerProvider = Provider.autoDispose<ItemScrollController>(
  (ref) {
    return ItemScrollController();
  },
);

final highlightedHospitalProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});
