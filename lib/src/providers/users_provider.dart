import 'package:built_collection/built_collection.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.data.gql.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.req.gql.dart';
import 'package:flutter_app_stable/src/graphql/client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final usersProvider = StreamProvider<BuiltList<GUsersData_users>>((ref) async* {
  final stream = GraphqlClient.instance.request(GUsersReq());
  await for (final data in stream) {
    if (data.hasErrors) {
      throw Exception(data.linkException ?? data.graphqlErrors);
    }
    if (data.data?.users != null) {
      yield data.data!.users;
    }
  }
});
