import 'package:drift/drift.dart';
import 'package:faker/faker.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/database/entities/form/form_table.dart';
import 'package:flutter_app_stable/database/entities/project/project_table.dart';

part 'form_dao.g.dart';

@DriftAccessor(tables: [Form, Project])
class FormDao extends DatabaseAccessor<Database> with _$FormDaoMixin {
  FormDao(Database database) : super(database);

  Stream<Iterable<FormWithProject>> watch() {
    final query = select(form).join([
      innerJoin(project, project.id.equalsExp(form.projectId)),
    ]);

    final stream = query.watch();

    return stream.map((rows) {
      return rows.map((row) {
        return FormWithProject(
          form: row.readTable(form),
          project: row.readTable(project),
        );
      });
    });
  }

  Stream<FormWithProject> watchSingle(int id) {
    final query = (select(form).join([
      innerJoin(project, project.id.equalsExp(form.projectId)),
    ])
      ..where(form.id.equals(id)));

    final stream = query.watchSingle();

    return stream.map((row) {
      return FormWithProject(
        form: row.readTable(form),
        project: row.readTable(project),
      );
    });
  }

  Future<void> insert() async {
    final projects = await select(project).get();
    await into(form).insert(FormCompanion.insert(
      name: faker.company.name(),
      status: random.element(FormStatus.values),
      projectId: random.element(projects).id,
    ));
  }

  Future<void> seed() async {
    final projects = await select(project).get();
    return batch((batch) {
      batch.insertAll(
        form,
        List.generate(
          10,
          (index) => FormCompanion.insert(
            name: faker.company.name(),
            status: random.element(FormStatus.values),
            projectId: random.element(projects).id,
          ),
        ),
      );
    });
  }
}

class FormWithProject {
  const FormWithProject({
    required this.form,
    required this.project,
  });
  final FormData form;
  final ProjectData project;
}
