import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/document.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocumentsScreen extends ConsumerWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documents = ref.watch(documentsProvider).valueOrNull ?? const [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
      ),
      body: ListView.builder(
        itemCount: documents.length,
        itemBuilder: (context, index) {
          final document = documents[index];
          return ListTile(
            title: Text(document.name),
            subtitle: Text(document.description),
            leading: Text(document.type.name),
            onTap: () {
              DocumentRoute(id: document.id).push(context);
            },
          );
        },
      ),
    );
  }
}
