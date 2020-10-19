import 'package:Quizzy/HomePage/custom_appBar/home_screen.dart';
import 'package:Quizzy/Util/app_theming.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.themeData,
      title: 'Quizzy',
      home: IndexPage(),
    );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Theme.of(context).colorScheme.primaryVariant,
      child: Scaffold(
        body: Stack(
          overflow: Overflow.visible,
          children: [
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
