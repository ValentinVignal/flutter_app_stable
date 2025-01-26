import 'package:flutter/material.dart';
import 'package:flutter_app_stable/src/graphql/__generated__/mutation.update_user.req.gql.dart';
import 'package:flutter_app_stable/src/graphql/client.dart';
import 'package:flutter_app_stable/src/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditUserScreen extends ConsumerStatefulWidget {
  const EditUserScreen({required this.id, super.key});

  final String id;

  @override
  ConsumerState<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends ConsumerState<EditUserScreen> {
  late final _nameController = TextEditingController(
    text: ref.read(userProvider(widget.id)).valueOrNull?.name,
  );
  late final _emailController = TextEditingController(
    text: ref.read(userProvider(widget.id)).valueOrNull?.email,
  );

  var _loading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                enabled: !_loading,
                controller: _nameController,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                enabled: !_loading,
                controller: _emailController,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _loading
                          ? null
                          : () {
                              GoRouter.of(context).pop();
                            },
                      child: const Text('Cancel'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _loading
                          ? null
                          : () async {
                              var success = false;
                              setState(() {
                                _loading = true;
                              });
                              try {
                                final request = GUpdateUserReq(
                                  (request) => request.vars.input
                                    ..id = widget.id
                                    ..name = _nameController.text
                                    ..email = _emailController.text,
                                );
                                final user = await GraphqlClient.instance
                                    .request(request)
                                    .first;
                                if (user.data != null) {
                                  success = true;
                                }
                              } finally {
                                setState(() {
                                  _loading = false;
                                });
                                if (success && context.mounted) {
                                  GoRouter.of(context).pop();
                                }
                              }
                            },
                      child: _loading
                          ? const CircularProgressIndicator()
                          : const Text('Update'),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
