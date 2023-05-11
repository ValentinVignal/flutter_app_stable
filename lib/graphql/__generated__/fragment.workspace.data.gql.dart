// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'fragment.workspace.data.gql.g.dart';

abstract class GWorkspaceFragment {
  String get G__typename;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GWorkspaceFragmentData
    implements
        Built<GWorkspaceFragmentData, GWorkspaceFragmentDataBuilder>,
        GWorkspaceFragment {
  GWorkspaceFragmentData._();

  factory GWorkspaceFragmentData(
          [Function(GWorkspaceFragmentDataBuilder b) updates]) =
      _$GWorkspaceFragmentData;

  static void _initializeBuilder(GWorkspaceFragmentDataBuilder b) =>
      b..G__typename = 'Workspace';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  static Serializer<GWorkspaceFragmentData> get serializer =>
      _$gWorkspaceFragmentDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWorkspaceFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspaceFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWorkspaceFragmentData.serializer,
        json,
      );
}
