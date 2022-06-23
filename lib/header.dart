import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20 * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Style.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: ListView(
                children: [
                  Container(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        children: [
                          TextSpan(text: 'Hello there Neighbor,'),
                          TextSpan(
                            text: '\nIts a Great day for a coffee',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.brown.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search_rounded, size: 30, color: Colors.brown),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        contentPadding: EdgeInsets.only(left: 10),
                        hintStyle: TextStyle(
                          color: Colors.brown.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
