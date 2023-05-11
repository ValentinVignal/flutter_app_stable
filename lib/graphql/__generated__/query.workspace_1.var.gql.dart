// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.workspace_1.var.gql.g.dart';

abstract class GWorkspace1Vars
    implements Built<GWorkspace1Vars, GWorkspace1VarsBuilder> {
  GWorkspace1Vars._();

  factory GWorkspace1Vars([Function(GWorkspace1VarsBuilder b) updates]) =
      _$GWorkspace1Vars;

  static Serializer<GWorkspace1Vars> get serializer =>
      _$gWorkspace1VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspace1Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspace1Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspace1Vars.serializer,
        json,
      );
}
