// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'nested_pokemons.var.gql.g.dart';

abstract class GNestedPokemonsVars
    implements Built<GNestedPokemonsVars, GNestedPokemonsVarsBuilder> {
  GNestedPokemonsVars._();

  factory GNestedPokemonsVars(
      [Function(GNestedPokemonsVarsBuilder b) updates]) = _$GNestedPokemonsVars;

  static Serializer<GNestedPokemonsVars> get serializer =>
      _$gNestedPokemonsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNestedPokemonsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNestedPokemonsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNestedPokemonsVars.serializer,
        json,
      );
}
