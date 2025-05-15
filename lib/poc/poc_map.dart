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
  Set<String> _selectedIds = const {};

  late final _clusterManager = ClusterManager(
    clusterManagerId: ClusterManagerId('cluster_manager_id'),
    onClusterTap: (cluster) {
      setState(() {
        _selectedIds = cluster.markerIds.map((marker) => marker.value).toSet();
      });
    },
  );

  @override
  Widget build(BuildContext context) {
    final doctors = ref.watch(doctorsProvider).valueOrNull ?? const [];
    final currentPosition = ref.watch(positionProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                markers:
                    doctors
                        .expand((doctor) => doctor.hospitals)
                        .map(
                          (hospital) => Marker(
                            clusterManagerId: _clusterManager.clusterManagerId,
                            markerId: MarkerId(hospital.id),
                            position: hospital.location,
                            onTap: () {
                              setState(() {
                                _selectedIds = {hospital.id};
                              });
                              final doctorId = hospital.id.split('_').first;
                              ref
                                  .read(itemScrollControllerProvider)
                                  .scrollTo(
                                    index: int.parse(doctorId),
                                    duration: const Duration(milliseconds: 500),
                                  );
                              ref
                                  .read(highlightedHospitalProvider.notifier)
                                  .state = hospital.id;
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
                          _selectedIds = const {};
                        });
                      },
                    ),
                },
                clusterManagers: {_clusterManager},
                onTap: (_) {
                  setState(() {
                    _selectedIds = const {};
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
                visible: _selectedIds.isNotEmpty,
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
                            itemCount: _selectedIds.length,
                            itemBuilder: (context, index) {
                              final hospitalId = _selectedIds.elementAt(index);
                              final doctorId = hospitalId.split('_').first;
                              final doctor = doctors.firstWhere(
                                (doctor) => doctor.id == doctorId,
                              );
                              final hospital = doctor.hospitals.firstWhere(
                                (hospital) => hospital.id == hospitalId,
                              );
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Doctor $doctorId'),
                                  Text('Hospital $hospitalId'),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Location ${hospital.location.latitude}, ${hospital.location.longitude}',
                                  ),
                                  const SizedBox(height: 5),
                                  OutlinedButton(
                                    onPressed: () async {
                                      ref
                                          .read(itemScrollControllerProvider)
                                          .scrollTo(
                                            index: int.parse(doctorId),
                                            duration: const Duration(
                                              milliseconds: 500,
                                            ),
                                          );
                                      ref
                                          .read(
                                            highlightedHospitalProvider
                                                .notifier,
                                          )
                                          .state = hospital.id;
                                    },
                                    child: Text('Scroll in List'),
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
                              );
                            },
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
