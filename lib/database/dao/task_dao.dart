import 'package:drift/drift.dart';
import 'package:faker/faker.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/tables/task.dart';

part 'task_dao.g.dart';

@DriftAccessor(tables: [Task])
class TaskDao extends DatabaseAccessor<Database> with _$TaskDaoMixin {
  TaskDao(Database database) : super(database);

  Stream<List<TaskData>> watch() {
    return select(task).watch();
  }

  Stream<TaskData> watchSingle(int id) {
    return (select(task)..where((p) => p.id.equals(id))).watchSingle();
  }

  Future<void> insert() {
    return into(task).insert(TaskCompanion.insert(name: faker.company.name()));
  }
}
