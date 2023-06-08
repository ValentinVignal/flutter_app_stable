// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_app_stable/routes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('It should include the query parameters in the location', () {
    expect(
      const MyRoute(requiredQueryParameter: 'requiredQueryParameter').location,
      '/my-route?requiredQueryParameter=requiredQueryParameter',
    );
  });
}
