import 'package:built_value/built_value.dart';

part 'user_built_value.g.dart';

abstract class UserBuiltValue
    implements Built<UserBuiltValue, UserBuiltValueBuilder> {
  String get name;

  UserBuiltValue._();

  factory UserBuiltValue([void Function(UserBuiltValueBuilder) updates]) =
      _$UserBuiltValue;
}
