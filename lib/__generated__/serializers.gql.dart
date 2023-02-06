// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons_query.data.gql.dart'
    show GPokemonsData, GPokemonsData_pokemons;
import 'package:flutter_app_stable/graphql/__generated__/pokemons_query.req.gql.dart'
    show GPokemonsReq;
import 'package:flutter_app_stable/graphql/__generated__/pokemons_query.var.gql.dart'
    show GPokemonsVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GPokemonsData,
  GPokemonsData_pokemons,
  GPokemonsReq,
  GPokemonsVars,
])
final Serializers serializers = _serializersBuilder.build();
