import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 247, 240),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
                opacity: 1,
                child:
                    Icon(Icons.home_rounded, size: 34.0, color: Colors.brown)),
            Opacity(
                opacity: 0.5,
                child: Icon(Icons.add_location_rounded,
                    size: 34.0, color: Colors.brown)),
            Opacity(
                opacity: 0.5,
                child: Icon(Icons.coffee, size: 34.0, color: Colors.brown)),
            Opacity(
                opacity: 0.5,
                child: Icon(Icons.discount_outlined,
                    size: 34.0, color: Colors.brown)),
          ],
        ),
      ),
    );
  }
}
