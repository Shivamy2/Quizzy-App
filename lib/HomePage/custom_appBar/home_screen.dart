import 'package:Quizzy/HomePage/custom_appBar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarClipper(),
      ],
    );
  }
}
