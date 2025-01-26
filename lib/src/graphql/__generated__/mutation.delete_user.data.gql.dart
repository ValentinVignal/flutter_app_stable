// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'mutation.delete_user.data.gql.g.dart';

abstract class GDeleteUserData
    implements Built<GDeleteUserData, GDeleteUserDataBuilder> {
  GDeleteUserData._();

  factory GDeleteUserData([void Function(GDeleteUserDataBuilder b) updates]) =
      _$GDeleteUserData;

  static void _initializeBuilder(GDeleteUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get deleteUser;
  static Serializer<GDeleteUserData> get serializer =>
      _$gDeleteUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteUserData.serializer,
        json,
      );
}
