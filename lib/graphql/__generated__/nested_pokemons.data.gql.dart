// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'nested_pokemons.data.gql.g.dart';

abstract class GNestedPokemonsData
    implements Built<GNestedPokemonsData, GNestedPokemonsDataBuilder> {
  GNestedPokemonsData._();

  factory GNestedPokemonsData(
      [Function(GNestedPokemonsDataBuilder b) updates]) = _$GNestedPokemonsData;

  static void _initializeBuilder(GNestedPokemonsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GNestedPokemonsData_nestedPokemons> get nestedPokemons;
  static Serializer<GNestedPokemonsData> get serializer =>
      _$gNestedPokemonsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNestedPokemonsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNestedPokemonsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNestedPokemonsData.serializer,
        json,
      );
}

abstract class GNestedPokemonsData_nestedPokemons
    implements
        Built<GNestedPokemonsData_nestedPokemons,
            GNestedPokemonsData_nestedPokemonsBuilder> {
  GNestedPokemonsData_nestedPokemons._();

  factory GNestedPokemonsData_nestedPokemons(
          [Function(GNestedPokemonsData_nestedPokemonsBuilder b) updates]) =
      _$GNestedPokemonsData_nestedPokemons;

  static void _initializeBuilder(GNestedPokemonsData_nestedPokemonsBuilder b) =>
      b..G__typename = 'NestedPokemon';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNestedPokemonsData_nestedPokemons_nested get nested;
  static Serializer<GNestedPokemonsData_nestedPokemons> get serializer =>
      _$gNestedPokemonsDataNestedPokemonsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNestedPokemonsData_nestedPokemons.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNestedPokemonsData_nestedPokemons? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNestedPokemonsData_nestedPokemons.serializer,
        json,
      );
}

abstract class GNestedPokemonsData_nestedPokemons_nested
    implements
        Built<GNestedPokemonsData_nestedPokemons_nested,
            GNestedPokemonsData_nestedPokemons_nestedBuilder> {
  GNestedPokemonsData_nestedPokemons_nested._();

  factory GNestedPokemonsData_nestedPokemons_nested(
      [Function(GNestedPokemonsData_nestedPokemons_nestedBuilder b)
          updates]) = _$GNestedPokemonsData_nestedPokemons_nested;

  static void _initializeBuilder(
          GNestedPokemonsData_nestedPokemons_nestedBuilder b) =>
      b..G__typename = 'Pokemon';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GNestedPokemonsData_nestedPokemons_nested> get serializer =>
      _$gNestedPokemonsDataNestedPokemonsNestedSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNestedPokemonsData_nestedPokemons_nested.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNestedPokemonsData_nestedPokemons_nested? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNestedPokemonsData_nestedPokemons_nested.serializer,
        json,
      );
}
