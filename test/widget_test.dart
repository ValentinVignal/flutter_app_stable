// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemon_query.req.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql_http_link/gql_http_link.dart';

final _client = Client(link: HttpLink('http'));

class _MyWidget extends StatefulWidget {
  const _MyWidget({Key? key}) : super(key: key);

  @override
  State<_MyWidget> createState() => __MyWidgetState();
}

class __MyWidgetState extends State<_MyWidget> {
  late final _stream = _client.request(GPokemonsReq());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _stream,
      builder: (context, snapshot) {
        return const SizedBox();
      },
    );
  }
}

void main() {
  testWidgets('Pending timers test', (WidgetTester tester) async {
    await tester.pumpWidget(const _MyWidget());
  });
}
