import 'package:drift/drift.dart';
import 'package:flutter_app_stable/database/entities/project/project_table.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';

class Task extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get projectId => integer().references(Project, #id)();
  IntColumn get status => intEnum<TaskStatus>()();
}
