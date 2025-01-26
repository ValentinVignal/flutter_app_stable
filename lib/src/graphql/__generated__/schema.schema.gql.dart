// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GUpdateUser implements Built<GUpdateUser, GUpdateUserBuilder> {
  GUpdateUser._();

  factory GUpdateUser([void Function(GUpdateUserBuilder b) updates]) =
      _$GUpdateUser;

  String get id;
  String? get name;
  String? get email;
  static Serializer<GUpdateUser> get serializer => _$gUpdateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUser.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {
  'Person': {'User'}
};
