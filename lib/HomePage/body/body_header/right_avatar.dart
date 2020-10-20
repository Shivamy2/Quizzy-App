import 'package:Quizzy/Util/app_theming.dart';
import 'package:flutter/material.dart';

class BodyRightAvatar extends StatelessWidget {
  Widget circularAvatar(String text, BuildContext context) {
    return CircleAvatar(
      radius: (AppTheme.appSize(context).width * 0.09),
      backgroundColor: AppTheme.colorScheme.secondary,
      child: Text(
        '$text',
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          circularAvatar('Q', context),
          RaisedButton(
              child: Text(
                'Instagram',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              onPressed: () {
                print("Instagram Button Pressed");
              })
        ],
      ),
    );
  }
}
