import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (_) => '/persons',
    ),
    GoRoute(
      path: '/persons',
      builder: (_, __) => const PersonsScreen(),
      routes: [
        GoRoute(
          path: ':id',
          pageBuilder: (_, __) => const DrawerPage(
            child: PersonScreen(),
          ),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

class PersonsScreen extends StatelessWidget {
  const PersonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Persons'),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).push('/persons/1'),
              child: const Text('Push'),
            )
          ],
        ),
      ),
    );
  }
}

class PersonScreen extends StatelessWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Person'),
            ElevatedButton(
              onPressed: GoRouter.of(context).pop,
              child: const Text('Pop'),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerPage extends Page {
  const DrawerPage({
    required this.child,
  });

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return _DrawerPageRoute(
      settings: this,
    );
  }
}

class _DrawerPageRoute extends TransitionRoute {
  _DrawerPageRoute({
    required DrawerPage settings,
  }) : super(
          settings: settings,
        );
  @override
  Iterable<OverlayEntry> createOverlayEntries() {
    return [
      OverlayEntry(
        builder: (context) {
          return Row(
            children: [
              const Spacer(flex: 2),
              Expanded(
                  child: SlideTransition(
                position: animation!.drive(
                  Tween(
                    begin: const Offset(1, 0),
                    end: const Offset(0, 0),
                  ),
                ),
                child: (settings as DrawerPage).child,
              )),
            ],
          );
        },
      ),
    ];
  }

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}
