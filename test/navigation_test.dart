import 'package:flutter_test/flutter_test.dart';
import 'package:ironit/app/bootstrap.dart';
import 'package:ironit/core/router/app_router.dart';

void main() {
  test('App router should be initialized', () {
    // Verify router is properly initialized
    expect(AppRouter.router, isNotNull);
  });

  test('App should have bootstrap function', () {
    // Verify bootstrap function exists
    expect(bootstrap, isNotNull);
  });
}
