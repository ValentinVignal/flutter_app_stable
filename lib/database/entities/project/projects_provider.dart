import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/filters/project/project_applied_filters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredProjectsProvider = StreamProvider.autoDispose((ref) {
  final projectFilter = ref.watch(projectFilterProvider);
  return Database.instance.projectDao.watch(ids: projectFilter.selected);
});
