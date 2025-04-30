import 'dart:math' as math;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final positionProvider = Provider.autoDispose<Position?>((ref) {
  return null;
});

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

final _listProvider = StateProvider.autoDispose<List<LatLng>>((ref) {
  return _latLongList;
});

void addMoreLocations(WidgetRef ref) {
  final list = ref.read(_listProvider);
  final newList = List<LatLng>.from(list);
  for (var i = 0; i < 10; i++) {
    final random = math.Random();
    final lat = random.nextDouble() * (_maxLat - _minLat) + _minLat;
    final long = random.nextDouble() * (_maxLong - _minLong) + _minLong;
    newList.add(LatLng(lat, long));
  }
  ref.read(_listProvider.notifier).state = newList;
}

final listProvider = FutureProvider.autoDispose<List<LatLng>>((ref) async {
  return ref.watch(_listProvider);
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
