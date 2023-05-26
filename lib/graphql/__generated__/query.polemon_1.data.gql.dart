// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.polemon_1.data.gql.g.dart';

abstract class GPokemon1Data
    implements Built<GPokemon1Data, GPokemon1DataBuilder> {
  GPokemon1Data._();

  factory GPokemon1Data([Function(GPokemon1DataBuilder b) updates]) =
      _$GPokemon1Data;

  static void _initializeBuilder(GPokemon1DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPokemon1Data_pokemon? get pokemon;
  static Serializer<GPokemon1Data> get serializer => _$gPokemon1DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemon1Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon1Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemon1Data.serializer,
        json,
      );
}

abstract class GPokemon1Data_pokemon
    implements Built<GPokemon1Data_pokemon, GPokemon1Data_pokemonBuilder> {
  GPokemon1Data_pokemon._();

  factory GPokemon1Data_pokemon(
          [Function(GPokemon1Data_pokemonBuilder b) updates]) =
      _$GPokemon1Data_pokemon;

  static void _initializeBuilder(GPokemon1Data_pokemonBuilder b) =>
      b..G__typename = 'Pokemon';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get type;
  static Serializer<GPokemon1Data_pokemon> get serializer =>
      _$gPokemon1DataPokemonSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemon1Data_pokemon.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon1Data_pokemon? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemon1Data_pokemon.serializer,
        json,
      );
}
