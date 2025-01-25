// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/src/graphql/__generated__/query.agents.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/src/graphql/__generated__/query.agents.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/src/graphql/__generated__/query.agents.var.gql.dart'
    as _i3;
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'query.agents.req.gql.g.dart';

abstract class GAgentsReq
    implements
        Built<GAgentsReq, GAgentsReqBuilder>,
        _i1.OperationRequest<_i2.GAgentsData, _i3.GAgentsVars> {
  GAgentsReq._();

  factory GAgentsReq([void Function(GAgentsReqBuilder b) updates]) =
      _$GAgentsReq;

  static void _initializeBuilder(GAgentsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Agents',
    )
    ..executeOnListen = true;

  @override
  _i3.GAgentsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAgentsData? Function(
    _i2.GAgentsData?,
    _i2.GAgentsData?,
  )? get updateResult;
  @override
  _i2.GAgentsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GAgentsData? parseData(Map<String, dynamic> json) =>
      _i2.GAgentsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAgentsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GAgentsData, _i3.GAgentsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAgentsReq> get serializer => _$gAgentsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAgentsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAgentsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAgentsReq.serializer,
        json,
      );
}
