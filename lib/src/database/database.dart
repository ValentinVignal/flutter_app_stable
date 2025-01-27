import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter_app_stable/src/utils/bindings.dart';

part 'database.g.dart';

class DriftUser extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
}

@DriftDatabase(tables: [DriftUser])
class AppDatabase extends _$AppDatabase {
  static AppDatabase? _instance;
  static AppDatabase get instance => checkInstance(_instance);

  static void initialize() {
    _instance = AppDatabase();
  }

  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'my_database',
      native: const DriftNativeOptions(),
    );
  }
}
