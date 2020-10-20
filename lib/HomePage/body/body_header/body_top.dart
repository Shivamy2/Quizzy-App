import 'package:Quizzy/HomePage/body/body_header/right_avatar.dart';
import 'package:Quizzy/Util/app_theming.dart';
import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppTheme.appSize(context).width * 0.85,
      // color: Theme.of(context).colorScheme.primaryVariant,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'START',
                // theming dynamically from app theme class which we made earlier
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'QUIZZY',
                // theming dynamically from app theme class which we made earlier
                style: Theme.of(context).textTheme.headline6,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Text(
                  'Learn Today',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              Align(
                child: Text(
                  'For Tommorrow',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ],
          ),
          Spacer(),
          BodyRightAvatar(),
        ],
      ),
    );
  }
}
