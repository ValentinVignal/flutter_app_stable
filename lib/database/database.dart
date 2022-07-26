import 'package:drift/drift.dart';
import 'package:flutter_app_stable/database/entities/form/form_dao.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/database/entities/form/form_table.dart';
import 'package:flutter_app_stable/database/entities/project/project_dao.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/database/entities/project/project_table.dart';
import 'package:flutter_app_stable/database/entities/task/task_dao.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/database/entities/task/task_table.dart';
import 'package:flutter_app_stable/database/query_executor/shared.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    Project,
    Task,
    Form,
  ],
  daos: [
    ProjectDao,
    TaskDao,
    FormDao,
  ],
)
class Database extends _$Database {
  Database._(QueryExecutor queryExecutor) : super(queryExecutor);

  static Database get instance => _instance!;
  static Database? _instance;

  static Future<void> init() async {
    _instance = Database._(
      await getQueryExecutor(),
    );
  }

  @override
  int get schemaVersion => 1;
}
