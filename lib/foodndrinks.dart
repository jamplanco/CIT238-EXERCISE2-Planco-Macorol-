import 'coffeemenu.dart';
import 'package:flutter/material.dart';

import 'menuitemcard.dart';

class HotCoffeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenuItemCard(index: key);
        },
      ),
    );
  }
}
