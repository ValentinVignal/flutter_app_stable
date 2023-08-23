import 'package:flutter_test/flutter_test.dart';

void main() {
  for (final testIndex in List.generate(10, (index) => index)) {
    test('It should do some test ($testIndex)', () {
      for (final _ in List.generate(10, (index) => index)) {
        expect(false, isFalse);
        expect(true, isTrue);
      }
    });
  }
}
