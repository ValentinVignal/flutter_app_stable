@TestOn('browser')

import 'dart:html' as html;

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('aa', () {
    expect(html.document.title, 'Custom HTML file title');
  });
}
