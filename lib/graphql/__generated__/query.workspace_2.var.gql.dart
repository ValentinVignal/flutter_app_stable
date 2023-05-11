// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.workspace_2.var.gql.g.dart';

abstract class GWorkspace2Vars
    implements Built<GWorkspace2Vars, GWorkspace2VarsBuilder> {
  GWorkspace2Vars._();

  factory GWorkspace2Vars([Function(GWorkspace2VarsBuilder b) updates]) =
      _$GWorkspace2Vars;

  static Serializer<GWorkspace2Vars> get serializer =>
      _$gWorkspace2VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspace2Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspace2Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspace2Vars.serializer,
        json,
      );
}
