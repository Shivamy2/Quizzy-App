import 'package:flutter/material.dart';

class BottomNabbar extends StatelessWidget {
  BottomNavigationBarItem itemsInBottom(String label, Icon iconReal) {
    return BottomNavigationBarItem(
      label: '$label',
      icon: IconButton(
        icon: iconReal,
        onPressed: () {
          print("Nabbar home clicked");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Theme.of(context).colorScheme.surface,
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      items: [
        itemsInBottom('Home', Icon(Icons.home)),
        itemsInBottom('Menu', Icon(Icons.menu)),
        itemsInBottom('Score', Icon(Icons.favorite_outlined)),
      ],
    );
  }
}
