import 'package:flutter/material.dart';
import 'menupage.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          ElevatedButton(
            child: const Text('View All'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Background color
              onPrimary: Colors.brown,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 7,
              color: Colors.brown.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
