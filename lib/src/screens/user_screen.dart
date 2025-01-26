import 'package:flutter/material.dart';
import 'package:flutter_app_stable/src/graphql/router/routes.dart';
import 'package:flutter_app_stable/src/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider(id));
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: user.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        data: (data) => ListView(
          children: [
            ListTile(
              title: Text(data.id),
              subtitle: const Text('Id'),
            ),
            ListTile(
              title: Text(data.name),
              subtitle: const Text('Name'),
            ),
            ListTile(
              title: Text(data.email),
              subtitle: const Text('Email'),
            )
          ],
        ),
      ),
      floatingActionButton: user.hasValue ? UpdateUserFAB(id: id) : null,
    );
  }
}

class UpdateUserFAB extends StatelessWidget {
  const UpdateUserFAB({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        EditUserRoute(id: id).go(context);
      },
      child: const Icon(Icons.edit),
    );
  }
}
