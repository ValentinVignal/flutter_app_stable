// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;
import 'package:flutter_app_stable/graphql/__generated__/pokemon_fragment.data.gql.dart'
    as _i2;

part 'pokemons.data.gql.g.dart';

abstract class GPokemonsData
    implements Built<GPokemonsData, GPokemonsDataBuilder> {
  GPokemonsData._();

  factory GPokemonsData([Function(GPokemonsDataBuilder b) updates]) =
      _$GPokemonsData;

  static void _initializeBuilder(GPokemonsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPokemonsData_pokemons> get pokemons;
  static Serializer<GPokemonsData> get serializer => _$gPokemonsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemonsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonsData.serializer,
        json,
      );
}

abstract class GPokemonsData_pokemons
    implements
        Built<GPokemonsData_pokemons, GPokemonsData_pokemonsBuilder>,
        _i2.GPokemonFragment {
  GPokemonsData_pokemons._();

  factory GPokemonsData_pokemons(
          [Function(GPokemonsData_pokemonsBuilder b) updates]) =
      _$GPokemonsData_pokemons;

  static void _initializeBuilder(GPokemonsData_pokemonsBuilder b) =>
      b..G__typename = 'Pokemon';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GPokemonsData_pokemons> get serializer =>
      _$gPokemonsDataPokemonsSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonsData_pokemons.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemonsData_pokemons? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonsData_pokemons.serializer,
        json,
      );
}
