import 'package:flutter/material.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/mutation.create_user.req.gql.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/query.users.data.gql.dart';
import 'package:flutter_app_stable/src/graphql/client.dart';
import 'package:flutter_app_stable/src/providers/users_provider.dart';
import 'package:flutter_app_stable/src/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../graphql/__generated__/mutation.delete_user.req.gql.dart';
import '../graphql/__generated__/schema.ast.gql.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);
    final child = users.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final user = data[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.email),
            onTap: () {
              UserRoute(id: user.id).go(context);
            },
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                final client = GraphqlClient.instance;
                final response = await client
                    .request(
                        GDeleteUserReq((request) => request.vars.id = user.id))
                    .first;
                if (response.data?.deleteUser ?? false) {
                  client.cache
                    ..evict('${User.name.value}:${user.id}')
                    ..gc();
                }
              },
            ),
          );
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: child,
      floatingActionButton: const CreateUserFAB(),
    );
  }
}

class CreateUserFAB extends ConsumerStatefulWidget {
  const CreateUserFAB({super.key});

  @override
  ConsumerState<CreateUserFAB> createState() => _CreateUserFABState();
}

class _CreateUserFABState extends ConsumerState<CreateUserFAB> {
  var enabled = true;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: enabled
          ? () async {
              setState(() {
                enabled = false;
              });
              try {
                final client = GraphqlClient.instance;

                final user =
                    (await client.request(GCreateUserReq()).first).data;
                final cache = client.cache;

                final usersRequest = ref.read(usersRequestProvider);
                final cacheData = cache.readQuery(usersRequest);
                if (cacheData != null && user != null) {
                  cache.writeQuery(
                    usersRequest,
                    cacheData.rebuild(
                      (users) => users.users.add(
                        GUsersData_users.fromJson(user.createUser.toJson())!,
                      ),
                    ),
                  );
                }
              } finally {
                setState(() {
                  enabled = true;
                });
              }
            }
          : null,
      child:
          enabled ? const Icon(Icons.add) : const CircularProgressIndicator(),
    );
  }
}
