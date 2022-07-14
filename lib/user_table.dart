import 'package:drift/drift.dart';
import 'package:flutter_app_stable/user_builder_converter.dart';
import 'package:flutter_app_stable/user_converter.dart';

class UserTable extends Table {
  TextColumn get id => text()();

  TextColumn get user => text().map(const UserConverter())();
  TextColumn get userBuilder => text().map(const UserBuilderConverter())();
}
