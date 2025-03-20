import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Users'),
            subtitle: const Text('View all users'),
            onTap: () {
              const UsersRoute().go(context);
            },
          ),
          ListTile(
            title: const Text('Documents'),
            subtitle: const Text('View all documents'),
            onTap: () {
              const DocumentsRoute().push(context);
            },
          ),
        ],
      ),
    );
  }
}
