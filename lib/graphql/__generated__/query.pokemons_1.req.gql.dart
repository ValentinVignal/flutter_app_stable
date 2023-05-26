// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/query.pokemons_1.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/graphql/__generated__/query.pokemons_1.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/query.pokemons_1.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'query.pokemons_1.req.gql.g.dart';

abstract class GPokemons1Req
    implements
        Built<GPokemons1Req, GPokemons1ReqBuilder>,
        _i1.OperationRequest<_i2.GPokemons1Data, _i3.GPokemons1Vars> {
  GPokemons1Req._();

  factory GPokemons1Req([Function(GPokemons1ReqBuilder b) updates]) =
      _$GPokemons1Req;

  static void _initializeBuilder(GPokemons1ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Pokemons1',
    )
    ..executeOnListen = true;
  @override
  _i3.GPokemons1Vars get vars;
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
  _i2.GPokemons1Data? Function(
    _i2.GPokemons1Data?,
    _i2.GPokemons1Data?,
  )? get updateResult;
  @override
  _i2.GPokemons1Data? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPokemons1Data? parseData(Map<String, dynamic> json) =>
      _i2.GPokemons1Data.fromJson(json);
  static Serializer<GPokemons1Req> get serializer => _$gPokemons1ReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPokemons1Req.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons1Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPokemons1Req.serializer,
        json,
      );
}
