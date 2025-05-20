import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [for (var i = 0; i < 100; i++) Text('Item $i')],
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyWidget());

    expect(find.text('Item 0').hitTestable(), findsOne);
    expect(find.text('Item 50').hitTestable(), findsNothing);

    await tester.drag(
      find.byType(SingleChildScrollView),
      const Offset(0, -200),
    );

    await tester.pump();

    expect(find.text('Item 0').hitTestable(), findsNothing);
    expect(find.text('Item 30').hitTestable(), findsOne);
  });
}
