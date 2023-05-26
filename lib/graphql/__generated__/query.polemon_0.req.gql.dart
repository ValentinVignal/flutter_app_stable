// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/query.polemon_0.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/graphql/__generated__/query.polemon_0.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/query.polemon_0.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'query.polemon_0.req.gql.g.dart';

abstract class GPokemon0Req
    implements
        Built<GPokemon0Req, GPokemon0ReqBuilder>,
        _i1.OperationRequest<_i2.GPokemon0Data, _i3.GPokemon0Vars> {
  GPokemon0Req._();

  factory GPokemon0Req([Function(GPokemon0ReqBuilder b) updates]) =
      _$GPokemon0Req;

  static void _initializeBuilder(GPokemon0ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Pokemon0',
    )
    ..executeOnListen = true;
  @override
  _i3.GPokemon0Vars get vars;
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
  _i2.GPokemon0Data? Function(
    _i2.GPokemon0Data?,
    _i2.GPokemon0Data?,
  )? get updateResult;
  @override
  _i2.GPokemon0Data? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPokemon0Data? parseData(Map<String, dynamic> json) =>
      _i2.GPokemon0Data.fromJson(json);
  static Serializer<GPokemon0Req> get serializer => _$gPokemon0ReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPokemon0Req.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon0Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPokemon0Req.serializer,
        json,
      );
}
