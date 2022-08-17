// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'pokemon_fragment.var.gql.g.dart';

abstract class GPokemonFragmentVars
    implements Built<GPokemonFragmentVars, GPokemonFragmentVarsBuilder> {
  GPokemonFragmentVars._();

  factory GPokemonFragmentVars(
          [Function(GPokemonFragmentVarsBuilder b) updates]) =
      _$GPokemonFragmentVars;

  static Serializer<GPokemonFragmentVars> get serializer =>
      _$gPokemonFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPokemonFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GPokemonFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPokemonFragmentVars.serializer, json);
}
