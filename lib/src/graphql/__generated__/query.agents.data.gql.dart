// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'query.agents.data.gql.g.dart';

abstract class GAgentsData implements Built<GAgentsData, GAgentsDataBuilder> {
  GAgentsData._();

  factory GAgentsData([void Function(GAgentsDataBuilder b) updates]) =
      _$GAgentsData;

  static void _initializeBuilder(GAgentsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAgentsData_agents> get agents;
  static Serializer<GAgentsData> get serializer => _$gAgentsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAgentsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAgentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAgentsData.serializer,
        json,
      );
}

abstract class GAgentsData_agents
    implements Built<GAgentsData_agents, GAgentsData_agentsBuilder> {
  GAgentsData_agents._();

  factory GAgentsData_agents(
          [void Function(GAgentsData_agentsBuilder b) updates]) =
      _$GAgentsData_agents;

  static void _initializeBuilder(GAgentsData_agentsBuilder b) =>
      b..G__typename = 'Agent';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String get email;
  static Serializer<GAgentsData_agents> get serializer =>
      _$gAgentsDataAgentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAgentsData_agents.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAgentsData_agents? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAgentsData_agents.serializer,
        json,
      );
}
