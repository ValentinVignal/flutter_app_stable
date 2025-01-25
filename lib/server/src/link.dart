import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.data.gql.dart';
import 'package:gql_exec/src/request.dart';
import 'package:gql_exec/src/response.dart';

class ServerLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    switch (request.operation.operationName) {
      case 'Users':
        return _getUsers(request);
      default:
        throw Exception('Operation not found');
    }
  }

  Stream<Response> _getUsers(Request request) {
    final data = GUsersData(
      (users) => users.users = ListBuilder([
        for (var i = 0; i < 10; i++)
          GUsersData_users((user) {
            user
              ..id = i.toString()
              ..name = 'User $i'
              ..email = 'email $i';
          }),
      ]),
    );
    return Stream.value(
      Response(
        context: request.context,
        data: data.toJson(),
        response: const {},
      ),
    );
  }
}
