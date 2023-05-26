// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.pokemons_1.data.gql.g.dart';

abstract class GPokemons1Data
    implements Built<GPokemons1Data, GPokemons1DataBuilder> {
  GPokemons1Data._();

  factory GPokemons1Data([Function(GPokemons1DataBuilder b) updates]) =
      _$GPokemons1Data;

  static void _initializeBuilder(GPokemons1DataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPokemons1Data_pokemons> get pokemons;
  static Serializer<GPokemons1Data> get serializer =>
      _$gPokemons1DataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemons1Data.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons1Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemons1Data.serializer,
        json,
      );
}

abstract class GPokemons1Data_pokemons
    implements Built<GPokemons1Data_pokemons, GPokemons1Data_pokemonsBuilder> {
  GPokemons1Data_pokemons._();

  factory GPokemons1Data_pokemons(
          [Function(GPokemons1Data_pokemonsBuilder b) updates]) =
      _$GPokemons1Data_pokemons;

  static void _initializeBuilder(GPokemons1Data_pokemonsBuilder b) =>
      b..G__typename = 'Pokemon';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GPokemons1Data_pokemons> get serializer =>
      _$gPokemons1DataPokemonsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemons1Data_pokemons.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemons1Data_pokemons? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemons1Data_pokemons.serializer,
        json,
      );
}
