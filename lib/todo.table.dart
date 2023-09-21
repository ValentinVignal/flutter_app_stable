import 'package:drift/drift.dart';

import 'enum.dart';

class Todos extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();

  IntColumn get badEnum => intEnum<MyEnum>()();
}
