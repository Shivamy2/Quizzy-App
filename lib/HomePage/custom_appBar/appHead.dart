import 'package:flutter/material.dart';

class AppHeader extends PreferredSize {
  final Widget child;
  final double height;
  AppHeader({this.child, this.height = kToolbarHeight});
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      height: preferredSize.height,
      child: child,
    );
  }
}
