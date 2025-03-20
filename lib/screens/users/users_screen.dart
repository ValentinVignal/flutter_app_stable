import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/user.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider).valueOrNull ?? const [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.role.name),
            onTap: () {
              UserRoute(id: user.id).push(context);
            },
          );
        },
      ),
    );
  }
}
