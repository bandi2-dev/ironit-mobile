import 'package:flutter/material.dart';

/// A lightweight scaffold wrapper with common app functionality.
///
/// Provides SafeArea, keyboard dismissal, and optional app components.
/// Uses theme colors and follows Material 3 design guidelines.
class AppScaffold extends StatelessWidget {
  /// Creates an app scaffold.
  ///
  /// The [body] is the primary content of the scaffold.
  /// The [appBar] is displayed at the top.
  /// The [floatingActionButton] is displayed in the bottom right.
  /// The [bottomNavigationBar] is displayed at the bottom.
  /// The [backgroundColor] sets the scaffold background.
  /// Set [resizeToAvoidBottomInset] to control keyboard resize behavior.
  const AppScaffold({
    super.key,
    this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
  });

  /// The primary content of the scaffold.
  final Widget? body;

  /// The app bar to display at the top of the scaffold.
  final PreferredSizeWidget? appBar;

  /// The floating action button to display.
  final Widget? floatingActionButton;

  /// The bottom navigation bar to display.
  final Widget? bottomNavigationBar;

  /// The background color of the scaffold.
  final Color? backgroundColor;

  /// Whether the body should resize when the keyboard appears.
  final bool resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapping outside text fields
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: appBar,
        body: SafeArea(
          child: body ?? const SizedBox.shrink(),
        ),
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: backgroundColor ?? colorScheme.surface,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      ),
    );
  }
}
