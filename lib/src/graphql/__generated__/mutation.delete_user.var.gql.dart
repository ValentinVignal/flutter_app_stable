// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'mutation.delete_user.var.gql.g.dart';

abstract class GDeleteUserVars
    implements Built<GDeleteUserVars, GDeleteUserVarsBuilder> {
  GDeleteUserVars._();

  factory GDeleteUserVars([void Function(GDeleteUserVarsBuilder b) updates]) =
      _$GDeleteUserVars;

  String get id;
  static Serializer<GDeleteUserVars> get serializer =>
      _$gDeleteUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteUserVars.serializer,
        json,
      );
}
