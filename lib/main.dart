import 'package:Quizzy/HomePage/Bottom_bar/bottom_nav_bar.dart';
import 'package:Quizzy/HomePage/custom_appBar/appNab.dart';
import 'package:Quizzy/HomePage/home_screen.dart';
import 'package:Quizzy/Routing/route_generator.dart';
import 'package:Quizzy/Util/app_theming.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// main function which is the brain of app, used for running the app initials
void main() async {
  //forcing the app to be in protrait mode only
  WidgetsFlutterBinding.ensureInitialized();
  //definng the orientations used in the app
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //bild function enables the hot reload and hot restart interaction with the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      //using the themeData which was initialized in the theming section
      theme: AppTheme.themeData,
      //title is displayed when app is minimized in mobile
      title: 'Quizzy',
      //index page contains all the pages used in the app
      initialRoute: '/home',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //giving variant color to top of the screen which covers notification and other tools window
    return ColorfulSafeArea(
      color: Theme.of(context).colorScheme.primaryVariant,
      child: Scaffold(
        body: HomeScreen(),
        bottomNavigationBar: AppWidgetSize(
          height: AppTheme.appSize(context).height * 0.1,
          child: BottomNabbar(),
        ),
      ),
    );
  }
}
