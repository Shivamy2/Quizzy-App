import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color _primary = Color(0xFFffc107);
  static const Color _secondary = Color(0xFFad1457);
  static const Color _lightSecondary = Color(0xFFe35183);
  static const Color _primaryVariant = Color(0xFFc79100);
  static const Color _secondaryVariant = Color(0xFF78002e);
  static const Color _surface = Color(0xFFfff350);
  static const Color _background = Color(0xFFE1E2E1);
  static const Color _error = Colors.redAccent;
  static const Color _onPrimary = Color(0xFF000000);
  static const Color _onSecondary = Color(0xFFffffff);
  static const Color _onSurface = Color(0xFF000000);
  static const Color _onError = Color(0xFFffffff);
  static const Color _onBackground = Color(0xFF000000);
  //declaring the constant used in the app
  static final ColorScheme colorScheme = ColorScheme.light(
    primary: _primary,
    secondary: _secondary,
    primaryVariant: _primaryVariant,
    secondaryVariant: _secondaryVariant,
    surface: _surface,
    background: _background,
    error: _error,
    onPrimary: _onPrimary,
    onSecondary: _onSecondary,
    onSurface: _onSurface,
    onError: _onError,
    onBackground: _onBackground,
    brightness: Brightness.light,
  );
  static final IconThemeData iconThemeData = IconThemeData(
    color: _secondary,
  );

  static final TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.roboto(),
  );

  static final ThemeData themeData = new ThemeData(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: _background,
    primaryColor: colorScheme.primary,
    accentColor: colorScheme.secondary,
    backgroundColor: colorScheme.background,
    buttonColor: colorScheme.secondaryVariant,
    bottomAppBarColor: colorScheme.primaryVariant,
    brightness: colorScheme.brightness,
    errorColor: colorScheme.error,
    primaryColorDark: colorScheme.primaryVariant,
    primaryColorLight: colorScheme.surface,
    canvasColor: colorScheme.surface,
    unselectedWidgetColor: _lightSecondary,
    iconTheme: iconThemeData,
  );
}
