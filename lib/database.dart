import 'package:drift/drift.dart';
import 'package:flutter_app_stable/user_builder_converter.dart';
import 'package:flutter_app_stable/user_built_value.dart';
import 'package:flutter_app_stable/user_converter.dart';
import 'package:flutter_app_stable/user_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [UserTable])
class Database extends _$Database {
  Database(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 0;
}
