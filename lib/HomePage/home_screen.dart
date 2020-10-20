import 'package:Quizzy/HomePage/body/body_header/body_top.dart';
import 'package:Quizzy/HomePage/body/body_medium/topic_lists.dart';
import 'package:Quizzy/HomePage/custom_appBar/custom_app_bar.dart';
import 'package:Quizzy/Util/app_theming.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this widget allow us to put the elements one on other
    return Column(
      children: [
        Stack(
          children: [
            //used for giving the custom shape to the container
            CustomAppBarClipper(
              height: AppTheme.appSize(context).height / 3.0,
            ),
            // positioning the widgets on on other
            Positioned(
              top: 20.0,
              left: 20.0,
              child: BodyTop(),
            ),
          ],
        ),
        MainMiddleBody(),
      ],
    );
  }
}
