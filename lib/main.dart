import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final useRouteInformationProvider = ValueNotifier(false);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final routeDelegate = MyRouterDelegate();
  final routeInformationParser = MyRouteInformationParser();
  final routeInformationProvider = PlatformRouteInformationProvider(
    initialRouteInformation: const RouteInformation(
      location: '/',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: useRouteInformationProvider,
      builder: (context, _) {
        return MaterialApp.router(
          // key: ValueKey(useRouteInformationProvider.value),
          routerDelegate: routeDelegate,
          routeInformationParser: routeInformationParser,
          routeInformationProvider: useRouteInformationProvider.value
              ? routeInformationProvider
              : null,
        );
      },
    );
  }
}

enum Pages {
  page1,
  page2;

  Page get page => MaterialPage(child: MyWidget(page: this));
}

class MyRouterDelegate extends RouterDelegate<Pages>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  var currentPage = Pages.page1;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        currentPage.page,
      ],
      onPopPage: (route, result) {
        return true;
      },
    );
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(Pages configuration) async {
    currentPage = configuration;
  }
}

class MyRouteInformationParser extends RouteInformationParser<Pages> {
  @override
  Future<Pages> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isNotEmpty && uri.pathSegments.first == 'page2') {
      return Pages.page2;
    }
    return Pages.page1;
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    required this.page,
    Key? key,
  }) : super(key: key);

  final Pages page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('Page: $page'),
          ElevatedButton(
            child: const Text('Go to other'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text('Use route information provider'),
            onPressed: () {
              useRouteInformationProvider.value =
                  !useRouteInformationProvider.value;
            },
          ),
          AnimatedBuilder(
            animation: useRouteInformationProvider,
            builder: (context, _) {
              return Text(
                  'useRouteInformationProvider: ${useRouteInformationProvider.value}');
            },
          )
        ],
      ),
    );
  }
}
