import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({required this.id, super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider(id)).valueOrNull;

    return Scaffold(
      appBar: AppBar(
        title: Text('User $id'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(user?.id.toString() ?? ''),
          ),
          ListTile(
            title: Text(user?.name ?? ''),
          ),
          ListTile(
            title: Text(user?.role.name ?? ''),
          ),
        ],
      ),
    );
  }
}
