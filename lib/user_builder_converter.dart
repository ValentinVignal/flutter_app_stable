import 'package:drift/drift.dart';
import 'package:flutter_app_stable/user_built_value.dart';

class UserBuilderConverter
    extends TypeConverter<UserBuiltValueBuilder, String> {
  const UserBuilderConverter();

  @override
  UserBuiltValueBuilder? mapToDart(String? fromDb) {
    if (fromDb == null) return null;
    return UserBuiltValueBuilder();
  }

  @override
  String? mapToSql(UserBuiltValueBuilder? value) {
    if (value == null) return null;
    return '';
  }
}
