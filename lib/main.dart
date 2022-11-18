import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class AppRoute {
  const AppRoute(this.location);
  final int? location;
}

class AppRouter extends RouterDelegate<AppRoute>
    with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  // get correct state of router
  @override
  AppRoute get currentConfiguration => AppRoute(_selected);

  int? _selected;
  int get selected => _selected!;
  set selected(int value) {
    _selected = value == 0 ? null : value;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        _selected = null;
        notifyListeners();
        return true;
      },
      pages: [
        const MaterialPage(
          key: ValueKey('home'),
          child: Home(),
        ),
        if (_selected != null && _selected! > 0)
          DialogPage(
            key: ValueKey('dialog-$_selected'),
            child: DialogWidget(
              parameter: _selected!,
            ),
          )
        else if (_selected != null && _selected! < 0)
          MaterialPage(
            key: const ValueKey('material'),
            child: DialogWidget(
              parameter: _selected!,
            ),
          )
      ],
    );
  }

  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(AppRoute configuration) async {
    _selected = configuration.location;
  }
}

class AppRouteInformationParser extends RouteInformationParser<AppRoute> {
  // This converts route state to route information.
  @override
  RouteInformation restoreRouteInformation(configuration) {
    final String location;
    if (configuration.location == null) {
      location = '/';
    } else {
      location = '/dialog/${configuration.location}';
    }
    return RouteInformation(location: location);
  }

// This converts route info to router state
  @override
  Future<AppRoute> parseRouteInformation(
      RouteInformation routeInformation) async {
    final int? selected;
    if (routeInformation.location?.startsWith('/dialog/') ?? false) {
      selected = int.parse(routeInformation.location!.split('/').last);
    } else {
      selected = null;
    }
    return AppRoute(selected);
  }
}

final delegate = AppRouter();
final informationParser = AppRouteInformationParser();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: delegate,
      routeInformationParser: informationParser,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                delegate.selected = 1;
              },
              child: const Text('Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                delegate.selected = -1;
              },
              child: const Text('Material'),
            ),
          ],
        ),
      ),
    );
  }
}

class DialogWidget extends StatefulWidget {
  const DialogWidget({
    required this.parameter,
    super.key,
  });

  final int parameter;

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  void initState() {
    super.initState();
    print('initState ${widget.parameter}');
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Dialog'),
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                delegate.selected--;
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            Text(widget.parameter.toString()),
            IconButton(
              onPressed: () {
                delegate.selected++;
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
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
