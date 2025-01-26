// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/fragment.user.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'mutation.update_user.data.gql.g.dart';

abstract class GUpdateUserData
    implements Built<GUpdateUserData, GUpdateUserDataBuilder> {
  GUpdateUserData._();

  factory GUpdateUserData([void Function(GUpdateUserDataBuilder b) updates]) =
      _$GUpdateUserData;

  static void _initializeBuilder(GUpdateUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateUserData_updateUser get updateUser;
  static Serializer<GUpdateUserData> get serializer =>
      _$gUpdateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser
    implements
        Built<GUpdateUserData_updateUser, GUpdateUserData_updateUserBuilder>,
        _i2.GUserFragment {
  GUpdateUserData_updateUser._();

  factory GUpdateUserData_updateUser(
          [void Function(GUpdateUserData_updateUserBuilder b) updates]) =
      _$GUpdateUserData_updateUser;

  static void _initializeBuilder(GUpdateUserData_updateUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  static Serializer<GUpdateUserData_updateUser> get serializer =>
      _$gUpdateUserDataUpdateUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_updateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser.serializer,
        json,
      );
}
