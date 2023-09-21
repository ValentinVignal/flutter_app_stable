import 'package:drift/drift.dart';
import 'package:flutter_app_stable/my_class.dart';
import 'package:flutter_app_stable/my_enum.dart';

class Todos extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();

  IntColumn get badEnum => intEnum<MyEnum>()();
  TextColumn get badType => text().map(const MyClassConverter())();
}
