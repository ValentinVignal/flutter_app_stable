import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectsProvider = StreamProvider((ref) {
  return Database.instance.projectDao.watch();
});
