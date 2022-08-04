import 'package:flutter_app_stable/database/database.dart';
import 'package:riverpod/riverpod.dart';

final tasksProvider = StreamProvider.autoDispose((ref) {
  return Database.instance.taskDao.watch();
});
