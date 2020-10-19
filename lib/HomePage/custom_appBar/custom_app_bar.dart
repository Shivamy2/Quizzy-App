import 'package:flutter/material.dart';

class CustomAppBarClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size appDim = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CustomClipperClass(),
      child: Container(
        height: appDim.height / 2.5,
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
