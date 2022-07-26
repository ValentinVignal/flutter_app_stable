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

  Stream<List<FormData>> watch() {
    return select(form).watch();
  }

  Stream<FormData> watchSingle(int id) {
    return (select(form)..where((p) => p.id.equals(id))).watchSingle();
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
