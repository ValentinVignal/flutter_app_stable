// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.data.gql.dart'
    as _i2;

part 'query.workspace_2.data.gql.g.dart';

abstract class GWorkspace2Data
    implements Built<GWorkspace2Data, GWorkspace2DataBuilder> {
  GWorkspace2Data._();

  factory GWorkspace2Data([Function(GWorkspace2DataBuilder b) updates]) =
      _$GWorkspace2Data;

  static void _initializeBuilder(GWorkspace2DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GWorkspace2Data_workspace get workspace;
  static Serializer<GWorkspace2Data> get serializer =>
      _$gWorkspace2DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspace2Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspace2Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspace2Data.serializer,
        json,
      );
}

abstract class GWorkspace2Data_workspace
    implements
        Built<GWorkspace2Data_workspace, GWorkspace2Data_workspaceBuilder>,
        _i2.GWorkspaceFragment {
  GWorkspace2Data_workspace._();

  factory GWorkspace2Data_workspace(
          [Function(GWorkspace2Data_workspaceBuilder b) updates]) =
      _$GWorkspace2Data_workspace;

  static void _initializeBuilder(GWorkspace2Data_workspaceBuilder b) =>
      b..G__typename = 'Workspace';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  String get description2;
  static Serializer<GWorkspace2Data_workspace> get serializer =>
      _$gWorkspace2DataWorkspaceSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspace2Data_workspace.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspace2Data_workspace? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspace2Data_workspace.serializer,
        json,
      );
}
