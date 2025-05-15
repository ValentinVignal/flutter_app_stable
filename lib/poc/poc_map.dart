import 'package:animated_collection/animated_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/poc/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PocMap extends ConsumerStatefulWidget {
  const PocMap({super.key});

  @override
  ConsumerState<PocMap> createState() => _PocMapState();
}

class _PocMapState extends ConsumerState<PocMap> {
  Set<int> _selectedIndexes = const {};

  late final _clusterManager = ClusterManager(
    clusterManagerId: ClusterManagerId('cluster_manager_id'),
    onClusterTap: (cluster) {
      setState(() {
        _selectedIndexes =
            cluster.markerIds.map((marker) => int.parse(marker.value)).toSet();
      });
    },
  );

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(listProvider).valueOrNull ?? const [];
    final currentPosition = ref.watch(positionProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
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
                                _selectedIndexes = {entry.key};
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
                      strokeColor: Colors.blue,
                      strokeWidth: 1,
                      onTap: () {
                        setState(() {
                          _selectedIndexes = const {};
                        });
                      },
                    ),
                },
                clusterManagers: {_clusterManager},
                onTap: (_) {
                  setState(() {
                    _selectedIndexes = const {};
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
                visible: _selectedIndexes.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PointerInterceptor(
                    child: Card(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 100,
                          minHeight: 200,
                          maxHeight: constraints.maxHeight,
                          maxWidth: 300,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.separated(
                            separatorBuilder:
                                (context, index) => const Divider(),
                            shrinkWrap: true,
                            itemCount: _selectedIndexes.length,
                            itemBuilder:
                                (context, index) => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Location ${_selectedIndexes.elementAt(index) + 1}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'Latitude: ${list[_selectedIndexes.elementAt(index)].latitude}, Longitude: ${list[_selectedIndexes.elementAt(index)].longitude}',
                                    ),
                                    const SizedBox(height: 5),
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
              ),
            ),
          ],
        );
      },
    );
  }
}
