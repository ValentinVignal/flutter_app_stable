// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.data.gql.dart'
    as _i2;

part 'query.workspace_1.data.gql.g.dart';

abstract class GWorkspace1Data
    implements Built<GWorkspace1Data, GWorkspace1DataBuilder> {
  GWorkspace1Data._();

  factory GWorkspace1Data([Function(GWorkspace1DataBuilder b) updates]) =
      _$GWorkspace1Data;

  static void _initializeBuilder(GWorkspace1DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GWorkspace1Data_workspace get workspace;
  static Serializer<GWorkspace1Data> get serializer =>
      _$gWorkspace1DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspace1Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspace1Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspace1Data.serializer,
        json,
      );
}

abstract class GWorkspace1Data_workspace
    implements
        Built<GWorkspace1Data_workspace, GWorkspace1Data_workspaceBuilder>,
        _i2.GWorkspaceFragment {
  GWorkspace1Data_workspace._();

  factory GWorkspace1Data_workspace(
          [Function(GWorkspace1Data_workspaceBuilder b) updates]) =
      _$GWorkspace1Data_workspace;

  static void _initializeBuilder(GWorkspace1Data_workspaceBuilder b) =>
      b..G__typename = 'Workspace';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  String get description1;
  static Serializer<GWorkspace1Data_workspace> get serializer =>
      _$gWorkspace1DataWorkspaceSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspace1Data_workspace.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspace1Data_workspace? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspace1Data_workspace.serializer,
        json,
      );
}
