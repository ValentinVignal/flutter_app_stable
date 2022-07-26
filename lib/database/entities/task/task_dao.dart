import 'package:drift/drift.dart';
import 'package:faker/faker.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/project/project_table.dart';
import 'package:flutter_app_stable/database/entities/task/task_status.dart';
import 'package:flutter_app_stable/database/entities/task/task_table.dart';

part 'task_dao.g.dart';

@DriftAccessor(tables: [Task, Project])
class TaskDao extends DatabaseAccessor<Database> with _$TaskDaoMixin {
  TaskDao(Database database) : super(database);

  Stream<List<TaskData>> watch() {
    return select(task).watch();
  }

  Stream<TaskData> watchSingle(int id) {
    return (select(task)..where((p) => p.id.equals(id))).watchSingle();
  }

  Future<void> insert() async {
    final projects = await select(project).get();
    await into(task).insert(TaskCompanion.insert(
      name: faker.company.name(),
      status: random.element(TaskStatus.values),
      projectId: random.element(projects).id,
    ));
  }

  Future<void> seed() async {
    final projects = await select(project).get();
    return batch((batch) {
      batch.insertAll(
        task,
        List.generate(
          10,
          (index) => TaskCompanion.insert(
            name: faker.company.name(),
            status: random.element(TaskStatus.values),
            projectId: random.element(projects).id,
          ),
        ),
      );
    });
  }
}
