// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.data.gql.dart'
    show GWorkspaceFragmentData;
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.req.gql.dart'
    show GWorkspaceFragmentReq;
import 'package:flutter_app_stable/graphql/__generated__/fragment.workspace.var.gql.dart'
    show GWorkspaceFragmentVars;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_1.data.gql.dart'
    show GWorkspace1Data, GWorkspace1Data_workspace;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_1.req.gql.dart'
    show GWorkspace1Req;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_1.var.gql.dart'
    show GWorkspace1Vars;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.data.gql.dart'
    show GWorkspace2Data, GWorkspace2Data_workspace;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.req.gql.dart'
    show GWorkspace2Req;
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.var.gql.dart'
    show GWorkspace2Vars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GWorkspace1Data,
  GWorkspace1Data_workspace,
  GWorkspace1Req,
  GWorkspace1Vars,
  GWorkspace2Data,
  GWorkspace2Data_workspace,
  GWorkspace2Req,
  GWorkspace2Vars,
  GWorkspaceFragmentData,
  GWorkspaceFragmentReq,
  GWorkspaceFragmentVars,
])
final Serializers serializers = _serializersBuilder.build();
