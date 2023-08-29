import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_hello/main.dart';

void main() {
  group('Iseven group', () {
    test('Is Even', () {
      bool result = isEven(12);
      expect(result, true);
    });
    test('Is odd', () {
      bool result = isEven(123);
      expect(result, false);
    });
  });
}
