import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/fragment.user.data.gql.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/query.user.data.gql.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.data.gql.dart';
import 'package:gql_exec/gql_exec.dart';

class ServerLink extends Link {
  final _users = {
    for (var i = 0; i < 2; i++)
      i.toString(): GUserFragmentData(
        (user) => user
          ..id = i.toString()
          ..name = 'User $i'
          ..email = 'email $i',
      ),
  };

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    log('Request: ${request.operation.operationName}${request.variables}');
    switch (request.operation.operationName) {
      case 'Users':
        return _getUsers(request);
      case 'User':
        return _getUser(request);
      default:
        throw Exception('Operation not found');
    }
  }

  Stream<Response> _getUsers(Request request) {
    final data = GUsersData(
      (users) => users.users = ListBuilder(
        _users.values.map((u) => GUsersData_users.fromJson(u.toJson())),
      ),
    );
    return Stream.value(
      Response(
        context: request.context,
        data: data.toJson(),
        response: const {},
      ),
    );
  }

  Stream<Response> _getUser(Request request) {
    final errors = <GraphQLError>[];
    late final GUserData? data;
    final id = request.variables['id'];
    if (!_users.containsKey(id)) {
      errors.add(const GraphQLError(message: 'User not found'));
      data = null;
    } else {
      data = GUserData(
        (user) => user.user = GUserData_user.fromJson(
          _users[id]!.toJson(),
        )!
            .toBuilder(),
      );
    }
    return Stream.value(
      Response(
        errors: errors,
        context: request.context,
        data: data?.toJson(),
        response: const {},
      ),
    );
  }
}
