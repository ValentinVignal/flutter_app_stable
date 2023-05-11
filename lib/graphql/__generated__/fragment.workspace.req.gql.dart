// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.ast.gql.dart'
    as _i4;
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'fragment.workspace.req.gql.g.dart';

abstract class GWorkspaceFragmentReq
    implements
        Built<GWorkspaceFragmentReq, GWorkspaceFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GWorkspaceFragmentData,
            _i3.GWorkspaceFragmentVars> {
  GWorkspaceFragmentReq._();

  factory GWorkspaceFragmentReq(
          [Function(GWorkspaceFragmentReqBuilder b) updates]) =
      _$GWorkspaceFragmentReq;

  static void _initializeBuilder(GWorkspaceFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'WorkspaceFragment';
  @override
  _i3.GWorkspaceFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GWorkspaceFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GWorkspaceFragmentData.fromJson(json);
  static Serializer<GWorkspaceFragmentReq> get serializer =>
      _$gWorkspaceFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GWorkspaceFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspaceFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GWorkspaceFragmentReq.serializer,
        json,
      );
}
