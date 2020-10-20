import 'package:Quizzy/HomePage/body/body_header/right_avatar.dart';
import 'package:Quizzy/HomePage/custom_appBar/appNab.dart';
import 'package:Quizzy/HomePage/custom_appBar/custom_app_bar.dart';
import 'package:Quizzy/Util/app_theming.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MainMiddleBody extends StatefulWidget {
  @override
  _MainMiddleBodyState createState() => _MainMiddleBodyState();
}

class _MainMiddleBodyState extends State<MainMiddleBody> {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    Widget textWidget(String text) {
      return Text(
        '$text',
        style: Theme.of(context).textTheme.headline2,
      );
    }

    Widget rowWidgets(String text1, String text2) {
      return Row(
        children: [
          BodyRightAvatar().circularAvatar('$text1', context),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: textWidget('$text2'),
          ),
        ],
      );
    }

    Future<Widget> confirmationDialogue() {
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              actions: [
                FlatButton(
                  onPressed: () {
                    print('Flat Button pressed');
                  },
                  child: Text(
                    'Back',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    print('Raised Button pressed');
                    Navigator.of(context).pushNamed('/second');
                  },
                  child: Text(
                    'I Confirm',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                ),
              ],
              title: Text('Confirmation And Rules',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      )),
              content: Container(
                height: AppTheme.appSize(context).height * 0.3,
                color: Theme.of(context).unselectedWidgetColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Please Read the Instructions Carefully',
                        style: Theme.of(context).textTheme.headline2.copyWith(
                            fontWeight: FontWeight.normal, fontSize: 12.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        faker.lorem.sentence(),
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    }

    Widget finalWidgetsUsed(Widget child) {
      return GestureDetector(
        onTap: () {
          setState(() {
            confirmationDialogue();
          });
        },
        child: Container(
          child: child,
          decoration: new BoxDecoration(
            color: Color(0xFFe35183),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      );
    }

    return Container(
      child: SingleChildScrollView(
        child: Container(
          height: AppTheme.appSize(context).height -
              AppWidgetSize().preferredSize.height -
              CustomAppBarClipper().preferredSize.height -
              254.0,
          width: AppTheme.appSize(context).width - 10.0,
          child: Card(
            color: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  finalWidgetsUsed(rowWidgets('I', 'International')),
                  SizedBox(
                    height: 25.0,
                  ),
                  finalWidgetsUsed(rowWidgets('CA', 'Current-Affair')),
                  SizedBox(
                    height: 25.0,
                  ),
                  finalWidgetsUsed(rowWidgets('H', 'History')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
