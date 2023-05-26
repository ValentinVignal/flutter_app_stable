// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/query.polemon_1.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/graphql/__generated__/query.polemon_1.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/query.polemon_1.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'query.polemon_1.req.gql.g.dart';

abstract class GPokemon1Req
    implements
        Built<GPokemon1Req, GPokemon1ReqBuilder>,
        _i1.OperationRequest<_i2.GPokemon1Data, _i3.GPokemon1Vars> {
  GPokemon1Req._();

  factory GPokemon1Req([Function(GPokemon1ReqBuilder b) updates]) =
      _$GPokemon1Req;

  static void _initializeBuilder(GPokemon1ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Pokemon1',
    )
    ..executeOnListen = true;
  @override
  _i3.GPokemon1Vars get vars;
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
  _i2.GPokemon1Data? Function(
    _i2.GPokemon1Data?,
    _i2.GPokemon1Data?,
  )? get updateResult;
  @override
  _i2.GPokemon1Data? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPokemon1Data? parseData(Map<String, dynamic> json) =>
      _i2.GPokemon1Data.fromJson(json);
  static Serializer<GPokemon1Req> get serializer => _$gPokemon1ReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPokemon1Req.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon1Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPokemon1Req.serializer,
        json,
      );
}
