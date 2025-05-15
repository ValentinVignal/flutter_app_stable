import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/poc/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PocList extends ConsumerWidget {
  const PocList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(doctorsProvider).valueOrNull ?? const [];
    final currentPosition = ref.watch(positionProvider);
    final highlightedHospital = ref.watch(highlightedHospitalProvider);
    final highlightedDoctor = highlightedHospital?.split('_').first;
    return ScrollablePositionedList.builder(
      itemScrollController: ref.watch(itemScrollControllerProvider),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final doctor = list[index];
        final isHighlighted = highlightedDoctor == doctor.id;

        final locations =
            doctor.hospitals.map((hospital) => hospital.location).toList();
        final distances =
            locations.map((location) {
              if (currentPosition != null) {
                return getDistanceFromLatLonInKm(
                  currentPosition.latitude,
                  currentPosition.longitude,
                  location.latitude,
                  location.longitude,
                );
              }
              return null;
            }).toList();
        final minDistance = distances.nonNulls.minOrNull;
        final backgroundColor =
            isHighlighted
                ? Theme.of(context).colorScheme.primaryContainer
                : null;
        return ExpansionTile(
          collapsedBackgroundColor: backgroundColor,
          title: Text('Doctor $index'),
          subtitle:
              minDistance != null
                  ? Text(
                    'Closest hospital: ${minDistance.toStringAsFixed(2)} km',
                  )
                  : null,
          children:
              doctor.hospitals.mapIndexed((index, hospital) {
                final isHighlighted = highlightedHospital == hospital.id;
                return ListTile(
                  tileColor:
                      isHighlighted
                          ? Theme.of(context).colorScheme.primaryContainer
                          : null,
                  title: Text('Hospital $index'),
                  subtitle: Text(
                    'Latitude: ${hospital.location.latitude}, Longitude: ${hospital.location.longitude}',
                  ),
                  trailing:
                      distances[index] != null
                          ? Text('${distances[index]!.toStringAsFixed(2)} km')
                          : null,
                );
              }).toList(),
        );
      },
    );
  }
}
