import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<ItemRoute>(path: ':date'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(context) => const HomeScreen();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final itemDate = now.add(Duration(hours: index));
          final roundedDate = DateTime(
            itemDate.year,
            itemDate.month,
            itemDate.day,
          );
          return ListTile(
            title: Text(itemDate.toString()),
            onTap: () {
              GoRouter.of(context).go(ItemRoute(roundedDate).location);
            },
          );
        },
      ),
    );
  }
}

class ItemRoute extends GoRouteData {
  const ItemRoute(this.date);
  final DateTime date;

  @override
  Widget build(context) => ItemScreen(date: date);
}

class ItemScreen extends StatelessWidget {
  const ItemScreen({
    required this.date,
    super.key,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item'),
      ),
      body: Center(
        child: Text(date.toString()),
      ),
    );
  }
}
