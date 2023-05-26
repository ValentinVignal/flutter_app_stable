// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.pokemons_1.var.gql.g.dart';

abstract class GPokemons1Vars
    implements Built<GPokemons1Vars, GPokemons1VarsBuilder> {
  GPokemons1Vars._();

  factory GPokemons1Vars([Function(GPokemons1VarsBuilder b) updates]) =
      _$GPokemons1Vars;

  static Serializer<GPokemons1Vars> get serializer =>
      _$gPokemons1VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemons1Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons1Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemons1Vars.serializer,
        json,
      );
}
