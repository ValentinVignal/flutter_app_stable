import 'package:drift/drift.dart';
import 'package:flutter_app_stable/database/dao/project_dao.dart';
import 'package:flutter_app_stable/database/dao/task_dao.dart';
import 'package:flutter_app_stable/database/query_executor/shared.dart';
import 'package:flutter_app_stable/database/tables/project.dart';
import 'package:flutter_app_stable/database/tables/task.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    Project,
    Task,
  ],
  daos: [
    ProjectDao,
    TaskDao,
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
