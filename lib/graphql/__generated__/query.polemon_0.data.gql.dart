// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.polemon_0.data.gql.g.dart';

abstract class GPokemon0Data
    implements Built<GPokemon0Data, GPokemon0DataBuilder> {
  GPokemon0Data._();

  factory GPokemon0Data([Function(GPokemon0DataBuilder b) updates]) =
      _$GPokemon0Data;

  static void _initializeBuilder(GPokemon0DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPokemon0Data_pokemon? get pokemon;
  static Serializer<GPokemon0Data> get serializer => _$gPokemon0DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemon0Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon0Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemon0Data.serializer,
        json,
      );
}

abstract class GPokemon0Data_pokemon
    implements Built<GPokemon0Data_pokemon, GPokemon0Data_pokemonBuilder> {
  GPokemon0Data_pokemon._();

  factory GPokemon0Data_pokemon(
          [Function(GPokemon0Data_pokemonBuilder b) updates]) =
      _$GPokemon0Data_pokemon;

  static void _initializeBuilder(GPokemon0Data_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get type;
  static Serializer<GPokemon0Data_pokemon> get serializer =>
      _$gPokemon0DataPokemonSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemon0Data_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon0Data_pokemon? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemon0Data_pokemon.serializer,
        json,
      );
}
