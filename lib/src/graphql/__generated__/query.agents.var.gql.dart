// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'query.agents.var.gql.g.dart';

abstract class GAgentsVars implements Built<GAgentsVars, GAgentsVarsBuilder> {
  GAgentsVars._();

  factory GAgentsVars([void Function(GAgentsVarsBuilder b) updates]) =
      _$GAgentsVars;

  static Serializer<GAgentsVars> get serializer => _$gAgentsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAgentsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAgentsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAgentsVars.serializer,
        json,
      );
}
