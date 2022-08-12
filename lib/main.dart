import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'data.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  static const title = 'GoRouter Example: Nested Navigation';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        routeInformationProvider: _router.routeInformationProvider,
        title: title,
      );

  late final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        redirect: (_) => '/family/${Families.data[0].id}',
      ),
      GoRoute(
        path: '/family/:fid',
        builder: (context, state) => FamilyTabsScreen(
          selectedFamily: Families.family(state.params['fid']!),
        ),
        routes: [
          GoRoute(
            path: 'person/:pid',
            builder: (context, state) {
              final family = Families.family(state.params['fid']!);
              final person = family.person(state.params['pid']!);

              return PersonScreen(family: family, person: person);
            },
          ),
        ],
      ),
    ],
  );
}

class FamilyTabsScreen extends StatefulWidget {
  FamilyTabsScreen({required Family selectedFamily, Key? key})
      : index = Families.data.indexWhere((f) => f.id == selectedFamily.id),
        super(key: key) {
    assert(index != -1);
  }

  final int index;

  @override
  _FamilyTabsScreenState createState() => _FamilyTabsScreenState();
}

class _FamilyTabsScreenState extends State<FamilyTabsScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            const ColoredBox(
              color: Colors.blue,
              child: Text(App.title),
            ),
            Row(
              children: [
                for (final f in Families.data)
                  Expanded(
                    child: InkWell(
                      onTap: () => _tap(context, f.id),
                      child: Text(f.name),
                    ),
                  ),
              ],
            ),
            Expanded(
              child: FamilyView(family: Families.data[widget.index]),
            ),
          ],
        ),
      );

  void _tap(BuildContext context, String id) => context.go('/family/$id');
}

class FamilyView extends StatelessWidget {
  const FamilyView({required this.family, Key? key}) : super(key: key);
  final Family family;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (final p in family.people)
          ListTile(
            title: Text(p.name),
            onTap: () => context.go('/family/${family.id}/person/${p.id}'),
          ),
      ],
    );
  }
}

class PersonScreen extends StatelessWidget {
  const PersonScreen({required this.family, required this.person, Key? key})
      : super(key: key);

  final Family family;
  final Person person;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(person.name)),
        body: Text('${person.name} ${family.name} is ${person.age} years old'),
      );
}
