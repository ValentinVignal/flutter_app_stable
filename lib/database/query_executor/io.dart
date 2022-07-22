import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

Future<QueryExecutor> getQueryExecutor() async {
  return SynchronousFuture(LazyDatabase(() async {
    final appDirectory = await path_provider.getLibraryDirectory();
    final file = File(path.join(appDirectory.path, 'db.sqlite'));
    return NativeDatabase(file);
  }));
}
