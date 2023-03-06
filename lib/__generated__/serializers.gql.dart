// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.data.gql.dart'
    show
        GNestedPokemonsData,
        GNestedPokemonsData_nestedPokemons,
        GNestedPokemonsData_nestedPokemons_nested;
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.req.gql.dart'
    show GNestedPokemonsReq;
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.var.gql.dart'
    show GNestedPokemonsVars;
import 'package:flutter_app_stable/graphql/__generated__/pokemon_fragment.data.gql.dart'
    show GPokemonFragmentData;
import 'package:flutter_app_stable/graphql/__generated__/pokemon_fragment.req.gql.dart'
    show GPokemonFragmentReq;
import 'package:flutter_app_stable/graphql/__generated__/pokemon_fragment.var.gql.dart'
    show GPokemonFragmentVars;
import 'package:flutter_app_stable/graphql/__generated__/pokemons.data.gql.dart'
    show GPokemonsData, GPokemonsData_pokemons;
import 'package:flutter_app_stable/graphql/__generated__/pokemons.req.gql.dart'
    show GPokemonsReq;
import 'package:flutter_app_stable/graphql/__generated__/pokemons.var.gql.dart'
    show GPokemonsVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GNestedPokemonsData,
  GNestedPokemonsData_nestedPokemons,
  GNestedPokemonsData_nestedPokemons_nested,
  GNestedPokemonsReq,
  GNestedPokemonsVars,
  GPokemonFragmentData,
  GPokemonFragmentReq,
  GPokemonFragmentVars,
  GPokemonsData,
  GPokemonsData_pokemons,
  GPokemonsReq,
  GPokemonsVars,
])
final Serializers serializers = _serializersBuilder.build();
