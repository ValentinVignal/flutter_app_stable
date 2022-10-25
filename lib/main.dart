import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  initialLocation: '/family',
  routes: [
    GoRoute(
      path: '/family',
      builder: (context, state) => const Families(),
    ),
    GoRoute(
      path: '/family/:fid',
      builder: (context, state) {
        final uri = Uri.parse(state.location);
        return Family(
          id: uri.path[1],
        );
      },
    ),
  ],
  redirect: (context, state) {
    print('state.location: ${state.location}');
    print('state.path: ${state.path}');
    print('state.fullpath: ${state.fullpath}');
    return null;
  },
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class Families extends StatelessWidget {
  const Families({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Families'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Family $index'),
            onTap: () {
              GoRouter.of(context).push('/family/$index');
            },
          );
        },
      ),
    );
  }
}

class Family extends StatelessWidget {
  const Family({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family $id'),
      ),
      body: Center(
        child: Text('Family $id'),
      ),
    );
  }
}
