// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'pokemons_query.var.gql.g.dart';

abstract class GPokemonsVars
    implements Built<GPokemonsVars, GPokemonsVarsBuilder> {
  GPokemonsVars._();

  factory GPokemonsVars([Function(GPokemonsVarsBuilder b) updates]) =
      _$GPokemonsVars;

  static Serializer<GPokemonsVars> get serializer => _$gPokemonsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemonsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonsVars.serializer,
        json,
      );
}
