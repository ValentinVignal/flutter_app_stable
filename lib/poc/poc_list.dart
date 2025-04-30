import 'package:flutter/material.dart';
import 'package:flutter_app_stable/poc/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PocList extends ConsumerWidget {
  const PocList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(listProvider).valueOrNull ?? const [];
    final currentPosition = ref.watch(positionProvider);
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return ListTile(
          title: Text('Location ${index + 1}'),
          subtitle: Text(
            'Latitude: ${item.latitude}, Longitude: ${item.longitude}',
          ),
          trailing:
              currentPosition != null
                  ? Text(
                    '${getDistanceFromLatLonInKm(currentPosition.latitude, currentPosition.longitude, item.latitude, item.longitude).toStringAsFixed(2)} km',
                  )
                  : null,
        );
      },
    );
  }
}
