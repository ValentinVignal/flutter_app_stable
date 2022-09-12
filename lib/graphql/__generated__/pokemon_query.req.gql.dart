// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/pokemon_query.ast.gql.dart'
    as _i5;
import 'package:flutter_app_stable/graphql/__generated__/pokemon_query.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/pokemon_query.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'pokemon_query.req.gql.g.dart';

abstract class GPokemonsReq
    implements
        Built<GPokemonsReq, GPokemonsReqBuilder>,
        _i1.OperationRequest<_i2.GPokemonsData, _i3.GPokemonsVars> {
  GPokemonsReq._();

  factory GPokemonsReq([Function(GPokemonsReqBuilder b) updates]) =
      _$GPokemonsReq;

  static void _initializeBuilder(GPokemonsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'Pokemons')
    ..executeOnListen = true;
  @override
  _i3.GPokemonsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GPokemonsData? Function(_i2.GPokemonsData?, _i2.GPokemonsData?)?
      get updateResult;
  @override
  _i2.GPokemonsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPokemonsData? parseData(Map<String, dynamic> json) =>
      _i2.GPokemonsData.fromJson(json);
  static Serializer<GPokemonsReq> get serializer => _$gPokemonsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GPokemonsReq.serializer, this)
          as Map<String, dynamic>);
  static GPokemonsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GPokemonsReq.serializer, json);
}
