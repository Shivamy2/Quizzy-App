import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //getting the actial size of mobile device whichever is used
  static Size appSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size;
  }

  //defining colors used in the app
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
  //initializing the colorScheme used in the app
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

  //icon themes setting up
  static final IconThemeData iconThemeData = IconThemeData(
    color: _secondary,
  );
  static TextStyle headlineFourths(var fontSizee) {
    return GoogleFonts.arvo(
      fontSize: fontSizee,
      fontWeight: FontWeight.w500,
      color: colorScheme.onPrimary,
    );
  }

  //defining the style of texts used in the app
  static final TextTheme textTheme = TextTheme(
    headline6: headlineFourths(35.0),
    caption: GoogleFonts.abel(
      fontSize: 16.0,
      fontStyle: FontStyle.normal,
      color: colorScheme.onPrimary,
    ),
    headline2: headlineFourths(25.0),
    bodyText1: GoogleFonts.abrilFatface(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: colorScheme.onPrimary),
    headline5: GoogleFonts.arvo(
      fontSize: 16.0,
      color: colorScheme.onPrimary,
    ),
    headline4: headlineFourths(18.0),
    subtitle1: GoogleFonts.arvo(
      color: colorScheme.onSecondary,
      fontSize: 30.0,
      fontWeight: FontWeight.w400,
    ),
    subtitle2: GoogleFonts.arvo(
      color: colorScheme.onSecondary,
      fontSize: 15.0,
      fontWeight: FontWeight.w300,
    ),
    button: AppTheme.textTheme.subtitle2
        .copyWith(color: AppTheme.colorScheme.onPrimary),
  );
  //finalizing the Themedata which will be used
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
    textTheme: textTheme,
    buttonTheme: ButtonThemeData(
      // height: 80.0,
      // minWidth: 100.0,
      buttonColor: colorScheme.secondaryVariant,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}
