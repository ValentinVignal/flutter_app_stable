import 'package:drift/drift.dart';

import 'todo.table.dart';
import 'enum.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  Todos,
])
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
}
