import 'package:flutter/material.dart';

class AppWidgetSize extends PreferredSize {
  final Widget child;
  final double height;
  AppWidgetSize({this.child, this.height = kToolbarHeight});
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

class AppWidgetHeaderSize extends PreferredSize {
  final Widget child;
  final double height;
  AppWidgetHeaderSize({this.child, this.height = kToolbarHeight});
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
