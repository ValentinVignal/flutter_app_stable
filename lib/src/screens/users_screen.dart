import 'package:flutter/material.dart';
import 'package:flutter_app_stable/src/graphql/router/routes.dart';
import 'package:flutter_app_stable/src/providers/users_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          );
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: child,
    );
  }
}
