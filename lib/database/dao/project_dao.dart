import 'package:drift/drift.dart';
import 'package:faker/faker.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/tables/project.dart';

part 'project_dao.g.dart';

@DriftAccessor(tables: [Project])
class ProjectDao extends DatabaseAccessor<Database> with _$ProjectDaoMixin {
  ProjectDao(Database database) : super(database);

  Stream<List<ProjectData>> watch() {
    return select(project).watch();
  }

  Stream<ProjectData> watchSingle(int id) {
    return (select(project)..where((p) => p.id.equals(id))).watchSingle();
  }

  Future<void> insert() {
    return into(project)
        .insert(ProjectCompanion.insert(name: faker.company.name()));
  }
}
