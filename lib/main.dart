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
      pageBuilder: (context, state) {
        final uri = Uri.parse(state.location);
        print('pageKey ${state.pageKey}');
        return DialogPage(
          key: state.pageKey,
          child: Family(
            id: int.parse(uri.pathSegments[1], radix: 10),
          ),
        );
      },
    ),
  ],
  redirect: (context, state) {
    return null;
  },
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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

  final int id;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Family $id'),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        IconButton(
          onPressed: id > 0
              ? () {
                  GoRouter.of(context).replace('/family/${id - 1}');
                }
              : null,
          icon: const Icon(
            Icons.skip_previous,
          ),
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).replace('/family/${id + 1}');
          },
          icon: const Icon(
            Icons.skip_next,
          ),
        ),
      ],
    );
  }
}

class DialogPage extends Page {
  const DialogPage({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return _DialogRoute(
      settings: this,
      context: context,
      builder: (context) {
        ModalRoute.of(context);
        return child;
      },
    );
  }
}

class _DialogRoute extends DialogRoute {
  _DialogRoute({
    super.settings,
    required super.context,
    required super.builder,
  });

  @override
  bool canTransitionFrom(TransitionRoute previousRoute) {
    return previousRoute is! _DialogRoute;
  }

  @override
  bool canTransitionTo(TransitionRoute nextRoute) {
    return nextRoute is! _DialogRoute;
  }
}
