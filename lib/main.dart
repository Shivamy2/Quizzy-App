import 'package:Quizzy/Util/app_theming.dart';
import 'package:Quizzy/custom_appBar/appHead.dart';
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
    Size appDim = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          overflow: Overflow.visible,
          children: [
            ClipPath(
              clipper: CustomClipperClass(),
              child: Container(
                height: appDim.height / 2.5,
                // width: appDim.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipperClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(
        size.width * -0.00, size.height * 0.37, 0, size.height * 0.74);
    path.cubicTo(size.width * 0.5, size.height * 1.0, size.width * 0.70,
        size.height * 0.33, size.width, size.height * 0.63);
    path.quadraticBezierTo(size.width, size.height * 0.48, size.width, 0);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
