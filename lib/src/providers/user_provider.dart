import 'package:flutter_app_stable/src/graphql/__generated__/query.user.data.gql.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/query.user.req.gql.dart';
import 'package:flutter_app_stable/src/graphql/client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider =
    StreamProvider.autoDispose.family<GUserData_user, String>((ref, id) async* {
  final stream = GraphqlClient.instance
      .request(GUserReq((request) => request.vars.id = id));
  await for (final data in stream) {
    if (data.hasErrors) {
      throw Exception(data.linkException ?? data.graphqlErrors);
    }
    if (data.data?.user != null) {
      yield data.data!.user;
    }
  }
});
