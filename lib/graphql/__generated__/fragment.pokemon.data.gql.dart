// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'fragment.pokemon.data.gql.g.dart';

abstract class GPokemonFragment {
  String get G__typename;
  String get id;
  String get name;
  String get type;
  Map<String, dynamic> toJson();
}

abstract class GPokemonFragmentData
    implements
        Built<GPokemonFragmentData, GPokemonFragmentDataBuilder>,
        GPokemonFragment {
  GPokemonFragmentData._();

  factory GPokemonFragmentData(
          [Function(GPokemonFragmentDataBuilder b) updates]) =
      _$GPokemonFragmentData;

  static void _initializeBuilder(GPokemonFragmentDataBuilder b) =>
      b..G__typename = 'Pokemon';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  static Serializer<GPokemonFragmentData> get serializer =>
      _$gPokemonFragmentDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemonFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemonFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemonFragmentData.serializer,
        json,
      );
}
