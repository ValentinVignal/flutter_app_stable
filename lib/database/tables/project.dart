import 'package:drift/drift.dart';

class Project extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
