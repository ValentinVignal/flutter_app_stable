import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/document.dart';
import 'package:flutter_app_stable/database/user.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({required this.id, super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider(id)).valueOrNull;
    final documents = ref.watch(documentsProvider).valueOrNull ?? const [];
    final createdDocuments =
        documents.where((doc) => doc.createdBy == id).toList();

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
          ListTile(
            title: Text(user?.age.toString() ?? ''),
          ),
          ...createdDocuments.map(
            (doc) => ListTile(
              title: Text(doc.name),
              subtitle: Text(doc.description),
              leading: Text(doc.type.name),
              onTap: () {
                DocumentRoute(id: doc.id).push(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
