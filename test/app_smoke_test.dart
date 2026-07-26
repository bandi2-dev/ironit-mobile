// Minimal smoke test to verify basic app functionality
import 'package:flutter_test/flutter_test.dart';
import 'package:ironit/app/app.dart';

void main() {
  test('App smoke test - verify basic structure', () {
    // Verify that the app module can be imported
    expect(appProviders, isNotNull);
    expect(appProviders, isA<List<Object>>());
  });
}
