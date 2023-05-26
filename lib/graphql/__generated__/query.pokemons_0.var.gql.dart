// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.pokemons_0.var.gql.g.dart';

abstract class GPokemons0Vars
    implements Built<GPokemons0Vars, GPokemons0VarsBuilder> {
  GPokemons0Vars._();

  factory GPokemons0Vars([Function(GPokemons0VarsBuilder b) updates]) =
      _$GPokemons0Vars;

  static Serializer<GPokemons0Vars> get serializer =>
      _$gPokemons0VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemons0Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons0Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemons0Vars.serializer,
        json,
      );
}
