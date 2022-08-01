import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:riverpod/riverpod.dart';

final filteredTasksProvider = StreamProvider.autoDispose((ref) {
  final projectFilter = ref.watch(projectFilterProvider);
  return Database.instance.taskDao.watch(projectIds: projectFilter.selected);
});
