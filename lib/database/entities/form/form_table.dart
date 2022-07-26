import 'package:drift/drift.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/database/entities/project/project_table.dart';

class Form extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get projectId => integer().references(Project, #id)();
  IntColumn get status => intEnum<FormStatus>()();
}
