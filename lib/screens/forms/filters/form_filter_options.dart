import 'package:flutter_app_stable/database/database.dart';
import 'package:riverpod/riverpod.dart';

final formsProvider = StreamProvider.autoDispose((ref) {
  return Database.instance.formDao.watch();
});
