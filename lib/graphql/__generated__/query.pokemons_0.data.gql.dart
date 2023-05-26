// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.pokemons_0.data.gql.g.dart';

abstract class GPokemons0Data
    implements Built<GPokemons0Data, GPokemons0DataBuilder> {
  GPokemons0Data._();

  factory GPokemons0Data([Function(GPokemons0DataBuilder b) updates]) =
      _$GPokemons0Data;

  static void _initializeBuilder(GPokemons0DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPokemons0Data_pokemons> get pokemons;
  static Serializer<GPokemons0Data> get serializer =>
      _$gPokemons0DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemons0Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons0Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemons0Data.serializer,
        json,
      );
}

abstract class GPokemons0Data_pokemons
    implements Built<GPokemons0Data_pokemons, GPokemons0Data_pokemonsBuilder> {
  GPokemons0Data_pokemons._();

  factory GPokemons0Data_pokemons(
          [Function(GPokemons0Data_pokemonsBuilder b) updates]) =
      _$GPokemons0Data_pokemons;

  static void _initializeBuilder(GPokemons0Data_pokemonsBuilder b) =>
      b..G__typename = 'Pokemon';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GPokemons0Data_pokemons> get serializer =>
      _$gPokemons0DataPokemonsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemons0Data_pokemons.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons0Data_pokemons? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemons0Data_pokemons.serializer,
        json,
      );
}
