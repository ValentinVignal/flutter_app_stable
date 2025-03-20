import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/document.dart';
import 'package:flutter_app_stable/database/user.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocumentScreen extends ConsumerWidget {
  const DocumentScreen({required this.id, super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final document = ref.watch(documentProvider(id)).valueOrNull;
    final User? user;

    if (document != null) {
      user = ref.watch(userProvider(document.createdBy)).valueOrNull;
    } else {
      user = null;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Document $id'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(document?.id.toString() ?? ''),
          ),
          ListTile(
            title: Text(document?.name ?? ''),
          ),
          ListTile(
            title: Text(document?.description ?? ''),
          ),
          ListTile(
            title: Text(document?.type.name ?? ''),
          ),
          ListTile(
            title: Text('Created by ${user?.name ?? ''}'),
            onTap: user != null
                ? () {
                    UserRoute(id: user!.id).push(context);
                  }
                : null,
          ),
        ],
      ),
    );
  }
}
