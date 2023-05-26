// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter_app_stable/graphql/__generated__/fragment.pokemon.data.gql.dart'
    show GPokemonFragmentData;
import 'package:flutter_app_stable/graphql/__generated__/fragment.pokemon.req.gql.dart'
    show GPokemonFragmentReq;
import 'package:flutter_app_stable/graphql/__generated__/fragment.pokemon.var.gql.dart'
    show GPokemonFragmentVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GPokemonFragmentData,
  GPokemonFragmentReq,
  GPokemonFragmentVars,
])
final Serializers serializers = _serializersBuilder.build();
