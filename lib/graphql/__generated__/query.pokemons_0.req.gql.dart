// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/query.pokemons_0.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/graphql/__generated__/query.pokemons_0.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/query.pokemons_0.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'query.pokemons_0.req.gql.g.dart';

abstract class GPokemons0Req
    implements
        Built<GPokemons0Req, GPokemons0ReqBuilder>,
        _i1.OperationRequest<_i2.GPokemons0Data, _i3.GPokemons0Vars> {
  GPokemons0Req._();

  factory GPokemons0Req([Function(GPokemons0ReqBuilder b) updates]) =
      _$GPokemons0Req;

  static void _initializeBuilder(GPokemons0ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Pokemons0',
    )
    ..executeOnListen = true;
  @override
  _i3.GPokemons0Vars get vars;
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
  _i2.GPokemons0Data? Function(
    _i2.GPokemons0Data?,
    _i2.GPokemons0Data?,
  )? get updateResult;
  @override
  _i2.GPokemons0Data? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPokemons0Data? parseData(Map<String, dynamic> json) =>
      _i2.GPokemons0Data.fromJson(json);
  static Serializer<GPokemons0Req> get serializer => _$gPokemons0ReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPokemons0Req.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons0Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPokemons0Req.serializer,
        json,
      );
}
