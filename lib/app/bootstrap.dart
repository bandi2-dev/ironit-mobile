// App bootstrap and initialization
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/router/app_router.dart';
import '../core/theme/app_theme.dart';

Future<void> bootstrap() async {
  // Initialize widgets binding
  WidgetsFlutterBinding.ensureInitialized();

  // Run the app with Riverpod provider scope
  runApp(
    ProviderScope(
      child: _App(),
    ),
  );
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ironit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routerConfig: AppRouter.router,
    );
  }
}

// Public version of the app for testing purposes
class TestableApp extends StatelessWidget {
  const TestableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Test App'),
        ),
      ),
    );
  }
}
