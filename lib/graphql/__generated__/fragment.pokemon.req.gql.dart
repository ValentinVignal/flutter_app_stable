// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_app_stable/__generated__/serializers.gql.dart' as _i6;
import 'package:flutter_app_stable/graphql/__generated__/fragment.pokemon.ast.gql.dart'
    as _i4;
import 'package:flutter_app_stable/graphql/__generated__/fragment.pokemon.data.gql.dart'
    as _i2;
import 'package:flutter_app_stable/graphql/__generated__/fragment.pokemon.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'fragment.pokemon.req.gql.g.dart';

abstract class GPokemonFragmentReq
    implements
        Built<GPokemonFragmentReq, GPokemonFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GPokemonFragmentData,
            _i3.GPokemonFragmentVars> {
  GPokemonFragmentReq._();

  factory GPokemonFragmentReq(
      [Function(GPokemonFragmentReqBuilder b) updates]) = _$GPokemonFragmentReq;

  static void _initializeBuilder(GPokemonFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'PokemonFragment';
  @override
  _i3.GPokemonFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GPokemonFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GPokemonFragmentData.fromJson(json);
  static Serializer<GPokemonFragmentReq> get serializer =>
      _$gPokemonFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPokemonFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPokemonFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPokemonFragmentReq.serializer,
        json,
      );
}
