import 'package:flutter/material.dart';
import 'package:flutter_app_stable/data/document.dart';
import 'package:flutter_app_stable/providers/documents_provider.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocumentsScreen extends ConsumerWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documentsAsyncValue = ref.watch(documentsProvider);

    final Widget body;
    if (documentsAsyncValue.isLoading) {
      body = const Center(
        child: CircularProgressIndicator(),
      );
    } else if (documentsAsyncValue.hasError) {
      body = Center(
        child: Text(
          'Error: ${documentsAsyncValue.error}',
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        ),
      );
    } else {
      body = const _DocumentsList();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
      ),
      body: Column(
        children: [
          const _DocumentsFilters(),
          Expanded(child: body),
        ],
      ),
    );
  }
}

class _DocumentsFilters extends ConsumerWidget {
  const _DocumentsFilters({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SegmentedButton<DocumentType>(
              emptySelectionAllowed: true,
              multiSelectionEnabled: true,
              onSelectionChanged: (selected) {},
              segments: DocumentType.values
                  .map(
                    (type) => ButtonSegment(
                      value: type,
                      label: Text(type.name),
                    ),
                  )
                  .toList(),
              selected: DocumentType.values.toSet(),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(prefix: Icon(Icons.search)),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}

class _DocumentsList extends ConsumerWidget {
  const _DocumentsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documents = ref.watch(documentsProvider).valueOrNull ?? const [];
    return ListView.builder(
      itemCount: documents.length,
      itemBuilder: (context, index) {
        final document = documents[index];
        return _DocumentListTile(
          document: document,
        );
      },
    );
  }
}

class _DocumentListTile extends ConsumerWidget {
  const _DocumentListTile({
    required this.document,
    super.key,
  });

  final Document document;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        DocumentRoute(id: document.id).go(context);
      },
      title: Text('${document.name} .${document.type.name}'),
      subtitle: Text('Updated at: ${document.updatedAt}'),
    );
  }
}
