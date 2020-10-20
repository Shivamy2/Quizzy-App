import 'package:Quizzy/Util/app_theming.dart';
import 'package:Quizzy/main.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => IndexPage());
        break;
      // case '/second':
      //   return MaterialPageRoute(builder: (_) => MainQuizPage());
      //   break;
      default:
        _errorRouting();
    }
  }

  static Route<dynamic> _errorRouting() {
    return MaterialPageRoute(builder: (_) => errorWidgetPage());
  }

  static Widget errorWidgetPage() {
    return Column(
      children: [
        Center(
          child: Text(
            'Error! Please check your Internet',
            style: AppTheme.themeData.textTheme.bodyText1,
          ),
        )
      ],
    );
  }
}
