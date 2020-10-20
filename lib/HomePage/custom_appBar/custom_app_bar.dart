import 'package:Quizzy/HomePage/custom_appBar/appNab.dart';
import 'package:Quizzy/Util/app_theming.dart';
import 'package:flutter/material.dart';

class CustomAppBarClipper extends PreferredSize {
  final height;
  CustomAppBarClipper({this.height = kToolbarHeight});
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    // using widget to perform clipping of path or container
    return ClipPath(
      clipper: CustomClipperClass(),
      child: Container(
        height: preferredSize.height,
        // width: appDim.width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class CustomClipperClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // move and line functions allows us to move the painter or clipper in the x-y axiz whicherver we give
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, size.height * 0.45, 0, size.height * 0.60);
    path.cubicTo(size.width * 0.21, size.height * 0.95, size.width * 0.89,
        size.height * 0.57, size.width, size.height * 0.50);
    path.quadraticBezierTo(size.width, size.height * 0.38, size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
