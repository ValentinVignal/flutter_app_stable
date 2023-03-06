// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'nested_pokemons.req.gql.g.dart';

abstract class GNestedPokemonsReq
    implements
        Built<GNestedPokemonsReq, GNestedPokemonsReqBuilder>,
        _i1.OperationRequest<_i2.GNestedPokemonsData, _i3.GNestedPokemonsVars> {
  GNestedPokemonsReq._();

  factory GNestedPokemonsReq([Function(GNestedPokemonsReqBuilder b) updates]) =
      _$GNestedPokemonsReq;

  static void _initializeBuilder(GNestedPokemonsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'NestedPokemons',
    )
    ..executeOnListen = true;
  @override
  _i3.GNestedPokemonsVars get vars;
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
  _i2.GNestedPokemonsData? Function(
    _i2.GNestedPokemonsData?,
    _i2.GNestedPokemonsData?,
  )? get updateResult;
  @override
  _i2.GNestedPokemonsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GNestedPokemonsData? parseData(Map<String, dynamic> json) =>
      _i2.GNestedPokemonsData.fromJson(json);
  static Serializer<GNestedPokemonsReq> get serializer =>
      _$gNestedPokemonsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNestedPokemonsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNestedPokemonsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNestedPokemonsReq.serializer,
        json,
      );
}
