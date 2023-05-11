// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'fragment.workspace.var.gql.g.dart';

abstract class GWorkspaceFragmentVars
    implements Built<GWorkspaceFragmentVars, GWorkspaceFragmentVarsBuilder> {
  GWorkspaceFragmentVars._();

  factory GWorkspaceFragmentVars(
          [Function(GWorkspaceFragmentVarsBuilder b) updates]) =
      _$GWorkspaceFragmentVars;

  static Serializer<GWorkspaceFragmentVars> get serializer =>
      _$gWorkspaceFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspaceFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspaceFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspaceFragmentVars.serializer,
        json,
      );
}
