// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

class GoRouterBackButton extends StatelessWidget {
  const GoRouterBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    print(
      'GoRouterBackButton.build - canPop ${router.canPop()}',
    );
    return AnimatedBuilder(
      // This forces the widget to rebuild when a page is pushed/popped. This is
      // useful when the page pushed is transparent.
      animation: router,
      builder: (context, child) {
        print(
          'GoRouterBackButton.build.AnimatedBuilder.builder - canPop ${router.canPop()}',
        );
        return Visibility(
          visible: router.canPop(),
          child: child!,
        );
      },
      child: BackButton(
        onPressed: router.pop,
      ),
    );
  }
}

void main() {
  testWidgets(
      'It should display a back button when there is a page to pop and pop it when pressed',
      (tester) async {
    final router = GoRouter(
      initialLocation: '/a',
      routes: [
        GoRoute(
          path: '/a',
          builder: (_, __) => const Material(child: GoRouterBackButton()),
        ),
        GoRoute(
          path: '/b',
          builder: (_, __) => const Material(child: GoRouterBackButton()),
        ),
      ],
    );
    final widget = MaterialApp.router(
      routerConfig: router,
    );
    await tester.pumpWidget(widget);

    expect(
      find.byType(BackButton),
      findsNothing,
      reason: 'When there is nothing to pop, it should not display anything',
    );

    print('Before push');
    router.push('/b');
    await tester.pumpAndSettle(); // Navigate between the pages.
    expect(router.canPop(), true);

    expect(
      find.byType(BackButton),
      findsOneWidget,
      reason: 'It should display a back button when there is a page to pop',
    );

    print('Before pop');
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle(); // Navigate between the pages.

    expect(
      find.byType(BackButton),
      findsNothing,
      reason: 'When there is nothing to pop, it should not display anything',
    );
  });
}
