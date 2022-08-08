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

  Stream<List<TaskWithProject>> watch({
    Iterable<int> projectIds = const {},
    Iterable<TaskStatus> statuses = const {},
    Iterable<int> ids = const {},
  }) {
    final query = select(task);
    if (projectIds.isNotEmpty) {
      query.where((t) => t.projectId.isIn(projectIds));
    }
    if (statuses.isNotEmpty) {
      query.where((p) => p.status.isIn(statuses.map((s) => s.index)));
    }
    if (ids.isNotEmpty) {
      query.where((p) => p.id.isIn(ids));
    }

    final joinQuery = query.join([
      innerJoin(project, project.id.equalsExp(task.projectId)),
    ]);

    final stream = joinQuery.watch();

    return stream.map((rows) {
      return rows.map((row) {
        return TaskWithProject(
          task: row.readTable(task),
          project: row.readTable(project),
        );
      }).toList();
    });
  }

  Stream<TaskWithProject> watchSingle(int id) {
    final query = (select(task).join([
      innerJoin(project, project.id.equalsExp(task.projectId)),
    ])
      ..where(task.id.equals(id)));

    final stream = query.watchSingle();

    return stream.map((row) {
      return TaskWithProject(
        task: row.readTable(task),
        project: row.readTable(project),
      );
    });
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

class TaskWithProject {
  const TaskWithProject({
    required this.task,
    required this.project,
  });
  final TaskData task;
  final ProjectData project;
}
