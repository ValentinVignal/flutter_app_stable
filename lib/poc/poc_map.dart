import 'package:animated_collection/animated_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/poc/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PocMap extends ConsumerStatefulWidget {
  const PocMap({super.key});

  @override
  ConsumerState<PocMap> createState() => _PocMapState();
}

class _PocMapState extends ConsumerState<PocMap> {
  int? _selectedIndex;

  final _clusterManager = ClusterManager(
    clusterManagerId: ClusterManagerId('cluster_manager_id'),
  );

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(listProvider).valueOrNull ?? const [];
    final currentPosition = ref.watch(positionProvider);
    return Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            markers:
                list
                    .asMap()
                    .entries
                    .map(
                      (entry) => Marker(
                        clusterManagerId: _clusterManager.clusterManagerId,
                        markerId: MarkerId(entry.key.toString()),
                        position: entry.value,
                        onTap: () {
                          setState(() {
                            _selectedIndex = entry.key;
                          });
                        },
                      ),
                    )
                    .toSet(),
            circles: {
              if (currentPosition != null)
                Circle(
                  consumeTapEvents: false,
                  circleId: const CircleId('current_position'),
                  center: LatLng(
                    currentPosition.latitude,
                    currentPosition.longitude,
                  ),
                  radius: 5000, // 5 km radius
                  // fillColor: Colors.blue.withValues(alpha: 0.2),
                  strokeColor: Colors.blue,
                  strokeWidth: 1,
                  onTap: () {
                    setState(() {
                      _selectedIndex = null;
                    });
                  },
                ),
            },
            clusterManagers: {_clusterManager},
            onTap: (_) {
              setState(() {
                _selectedIndex = null;
              });
            },
            initialCameraPosition: const CameraPosition(
              target: LatLng(1.290270, 103.851959),
              zoom: 13.0,
            ),
          ),
        ),

        Positioned(
          left: 0,
          top: 0,

          child: AnimatedVisibility(
            axis: Axis.horizontal,
            visible: _selectedIndex != null,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 100,
                      minHeight: 200,
                    ),
                    child: Column(
                      children: [
                        Text(
                          _selectedIndex == null
                              ? ''
                              : 'Latitude: ${list[_selectedIndex!].latitude}, Longitude: ${list[_selectedIndex!].longitude}',
                        ),
                        SizedBox(height: 10),
                        OutlinedButton(
                          onPressed: () async {
                            await launchUrlString(
                              'https://www.google.com/maps/dir/?api=1&destination=${Uri.encodeQueryComponent("Labrador Tower")}',
                            );
                          },
                          child: Text('Direction'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
