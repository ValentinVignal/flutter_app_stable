import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/document.dart';
import 'package:flutter_app_stable/database/user.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocumentsScreen extends ConsumerWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documents =
        ref.watch(documentsFilteredProvider).valueOrNull ?? const [];
    final types = ref.watch(documentTypeFilterProvider);
    final createdBy = ref.watch(documentCreatedByFilterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
      ),
      body: ListView.builder(
        itemCount: documents.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SegmentedButton<DocumentType>(
                segments: DocumentType.values
                    .map((type) => ButtonSegment(
                          value: type,
                          label: Text(type.name),
                        ))
                    .toList(),
                selected: ref.watch(documentTypeFilterProvider).toSet(),
                emptySelectionAllowed: true,
                multiSelectionEnabled: true,
                onSelectionChanged: (types) {
                  DocumentsRoute(
                    type: types.toSet(),
                    createdBy: createdBy.toSet(),
                  ).replace(context);
                },
              ),
            );
          }
          if (index == 1) {
            final users = ref.watch(usersProvider).valueOrNull ?? const [];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SegmentedButton<int>(
                segments: users.isEmpty
                    ? const [
                        ButtonSegment(
                          value: 0,
                          label: Text('Loading'),
                          enabled: false,
                        )
                      ]
                    : users
                        .map((user) => ButtonSegment(
                              value: user.id,
                              label: Text(user.name),
                            ))
                        .toList(),
                selected: createdBy.toSet(),
                emptySelectionAllowed: true,
                multiSelectionEnabled: true,
                onSelectionChanged: (users) {
                  DocumentsRoute(
                    type: types.toSet(),
                    createdBy: users.toSet(),
                  ).replace(context);
                },
              ),
            );
          }
          final document = documents[index - 2];
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
