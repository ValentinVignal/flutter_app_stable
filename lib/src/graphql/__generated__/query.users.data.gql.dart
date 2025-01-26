// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/fragment.user.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'query.users.data.gql.g.dart';

abstract class GUsersData implements Built<GUsersData, GUsersDataBuilder> {
  GUsersData._();

  factory GUsersData([void Function(GUsersDataBuilder b) updates]) =
      _$GUsersData;

  static void _initializeBuilder(GUsersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUsersData_users> get users;
  static Serializer<GUsersData> get serializer => _$gUsersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersData.serializer,
        json,
      );
}

abstract class GUsersData_users
    implements
        Built<GUsersData_users, GUsersData_usersBuilder>,
        _i2.GUserFragment {
  GUsersData_users._();

  factory GUsersData_users([void Function(GUsersData_usersBuilder b) updates]) =
      _$GUsersData_users;

  static void _initializeBuilder(GUsersData_usersBuilder b) =>
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
  static Serializer<GUsersData_users> get serializer =>
      _$gUsersDataUsersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersData_users.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersData_users.serializer,
        json,
      );
}
