import 'package:drift/drift.dart';

class UserTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();
}
