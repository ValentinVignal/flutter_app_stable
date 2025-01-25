// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'query.users.var.gql.g.dart';

abstract class GUsersVars implements Built<GUsersVars, GUsersVarsBuilder> {
  GUsersVars._();

  factory GUsersVars([void Function(GUsersVarsBuilder b) updates]) =
      _$GUsersVars;

  static Serializer<GUsersVars> get serializer => _$gUsersVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersVars.serializer,
        json,
      );
}
