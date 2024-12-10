import 'package:flutter/material.dart';
import 'package:flutter_app_stable/providers/documents_provider.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocumentScreen extends ConsumerWidget {
  const DocumentScreen({required this.id, super.key});

  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documentAsyncValue = ref.watch(documentProvider(id));

    final Widget body;
    if (documentAsyncValue.isLoading) {
      body = const Center(
        child: CircularProgressIndicator(),
      );
    } else if (documentAsyncValue.hasError) {
      body = Center(
        child: Text(
          'Error: ${documentAsyncValue.error}',
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        ),
      );
    } else {
      body = _DocumentDetails(id: id);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Document'),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DocumentEditRoute(id: id).go(context);
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class _DocumentDetails extends ConsumerWidget {
  const _DocumentDetails({required this.id, super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final document = ref.watch(documentProvider(id)).valueOrNull;
    return ListView(
      children: [
        ListTile(
          title: Text(id.toString()),
        ),
        ListTile(
          title: Text(document?.name ?? ''),
        ),
        ListTile(
          title: Text(document?.updatedAt.toString() ?? ''),
        ),
      ],
    );
  }
}
