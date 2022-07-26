import 'package:drift/drift.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';

class Project extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get status => intEnum<ProjectStatus>()();
}
