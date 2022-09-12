// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GPokemonInput
    implements Built<GPokemonInput, GPokemonInputBuilder> {
  GPokemonInput._();

  factory GPokemonInput([Function(GPokemonInputBuilder b) updates]) =
      _$GPokemonInput;

  String get name;
  static Serializer<GPokemonInput> get serializer => _$gPokemonInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPokemonInput.serializer, this)
          as Map<String, dynamic>);
  static GPokemonInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPokemonInput.serializer, json);
}

const possibleTypesMap = {};
