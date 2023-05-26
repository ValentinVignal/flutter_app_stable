// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.polemon_1.var.gql.g.dart';

abstract class GPokemon1Vars
    implements Built<GPokemon1Vars, GPokemon1VarsBuilder> {
  GPokemon1Vars._();

  factory GPokemon1Vars([Function(GPokemon1VarsBuilder b) updates]) =
      _$GPokemon1Vars;

  String get id;
  static Serializer<GPokemon1Vars> get serializer => _$gPokemon1VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemon1Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon1Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemon1Vars.serializer,
        json,
      );
}
