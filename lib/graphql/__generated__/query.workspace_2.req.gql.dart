// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'query.workspace_2.req.gql.g.dart';

abstract class GWorkspace2Req
    implements
        Built<GWorkspace2Req, GWorkspace2ReqBuilder>,
        _i1.OperationRequest<_i2.GWorkspace2Data, _i3.GWorkspace2Vars> {
  GWorkspace2Req._();

  factory GWorkspace2Req([Function(GWorkspace2ReqBuilder b) updates]) =
      _$GWorkspace2Req;

  static void _initializeBuilder(GWorkspace2ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Workspace2',
    )
    ..executeOnListen = true;
  @override
  _i3.GWorkspace2Vars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GWorkspace2Data? Function(
    _i2.GWorkspace2Data?,
    _i2.GWorkspace2Data?,
  )? get updateResult;
  @override
  _i2.GWorkspace2Data? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GWorkspace2Data? parseData(Map<String, dynamic> json) =>
      _i2.GWorkspace2Data.fromJson(json);
  static Serializer<GWorkspace2Req> get serializer =>
      _$gWorkspace2ReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GWorkspace2Req.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWorkspace2Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GWorkspace2Req.serializer,
        json,
      );
}
