import 'package:drift/drift.dart';
import 'package:flutter_app_stable/user_built_value.dart';

class UserConverter extends TypeConverter<UserBuiltValue, String> {
  const UserConverter();

  @override
  UserBuiltValue? mapToDart(String? fromDb) {
    if (fromDb == null) return null;
    return UserBuiltValue();
  }

  @override
  String? mapToSql(UserBuiltValue? value) {
    if (value == null) return null;
    return '';
  }
}
