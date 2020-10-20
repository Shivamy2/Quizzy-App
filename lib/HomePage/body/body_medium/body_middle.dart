import 'package:flutter/material.dart';

class MiddleBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        'START',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
