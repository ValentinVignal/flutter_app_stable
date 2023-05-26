// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i1;

part 'query.polemon_0.var.gql.g.dart';

abstract class GPokemon0Vars
    implements Built<GPokemon0Vars, GPokemon0VarsBuilder> {
  GPokemon0Vars._();

  factory GPokemon0Vars([Function(GPokemon0VarsBuilder b) updates]) =
      _$GPokemon0Vars;

  String get id;
  static Serializer<GPokemon0Vars> get serializer => _$gPokemon0VarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPokemon0Vars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemon0Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPokemon0Vars.serializer,
        json,
      );
}
