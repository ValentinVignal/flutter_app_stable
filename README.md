# Dart and flutter tests

- Dart: `package:test`
- Flutter: `package:flutter_test`

- Test files must end with `_test.dart`

Cycle:
1. `setUpAll` (= `beforeAll`)
2. `setUp` (= `beforeEach`)
3. `group` (= `describe`)
4. `test` or `testWidgets` (= `it`)
5. `tearDown` (= `afterEach`)
6. `tearDownAll` (= `afterAll`)

- `expect(actual, matcher)`

`flutter_test_config`: Special file that allows you to run code for each test files.


## Flutter test

`testWidgets` providers `WidgetTester tester` which allows you to interact with the pumped application.

- `tester.pumpWidget` to pump your widget.
- `expect(find.byType(MyWidget), findsOne)`
- Multiple widget finders
  - `find.byType(MyWidget)`
  - `find.text('My Text')`
  - `find.byIcon(Icon.close)`
  - `find.byKey(myKey)`
  - `find.byWidgetPredicate((widget) => ...)`
- Multiple finders:
  - `findsOne`
  - `findsNothing`
  - `findsExactly(3)`


### Interact

- `tester.enterText('my text');`
- `tester.tap(find.byType(MyButton))`

### Fake async

Flutter test are running in a fake async environment

- `tester.pump();` (preferred)
- `tester.pumpAndSettle();`

## Mocking

Dart is statically typed. It makes it safer. It also prevent us to easily mock classes / methods.

You **cannot** mock a static object or an already existing object.

The way to mock is more similar to Java than JavaScript.

You have to create your own mocks. or fakes.

Som packages allow you to do it (`mockito`, `mocktail`)

```dart
class MyObject {
  int add(int a, int b) => a + b;
}

class _MyObjectMock extends Mock implements MyObject {}

class _MyObjectFake extends Fake implements MyObject {
  @override
  int myMethod(int a, int b) => 0;
}

final mock = _MyObjectMock();
when(() => mock.add(any(), any())).thenReturn(0);
final fake = _MyObjectFake();

myFunctionUsingAMyObject(mock);
myFunctionUsingAMyObject(fake);

```
