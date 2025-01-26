// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/fragment.user.data.gql.dart'
    show GUserFragmentData;
import 'package:flutter_app_stable/src/graphql/__generated__/fragment.user.req.gql.dart'
    show GUserFragmentReq;
import 'package:flutter_app_stable/src/graphql/__generated__/fragment.user.var.gql.dart'
    show GUserFragmentVars;
import 'package:flutter_app_stable/src/graphql/__generated__/query.agents.data.gql.dart'
    show GAgentsData, GAgentsData_agents;
import 'package:flutter_app_stable/src/graphql/__generated__/query.agents.req.gql.dart'
    show GAgentsReq;
import 'package:flutter_app_stable/src/graphql/__generated__/query.agents.var.gql.dart'
    show GAgentsVars;
import 'package:flutter_app_stable/src/graphql/__generated__/query.user.data.gql.dart'
    show GUserData, GUserData_user;
import 'package:flutter_app_stable/src/graphql/__generated__/query.user.req.gql.dart'
    show GUserReq;
import 'package:flutter_app_stable/src/graphql/__generated__/query.user.var.gql.dart'
    show GUserVars;
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.data.gql.dart'
    show GUsersData, GUsersData_users;
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.req.gql.dart'
    show GUsersReq;
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.var.gql.dart'
    show GUsersVars;
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAgentsData,
  GAgentsData_agents,
  GAgentsReq,
  GAgentsVars,
  GUserData,
  GUserData_user,
  GUserFragmentData,
  GUserFragmentReq,
  GUserFragmentVars,
  GUserReq,
  GUserVars,
  GUsersData,
  GUsersData_users,
  GUsersReq,
  GUsersVars,
])
final Serializers serializers = _serializersBuilder.build();
