import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/body.dart';

import 'bottomnavbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 247, 240),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.menu,
            size: 32.0,
            color: Colors.brown,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add_shopping_cart,
                  size: 32.0,
                  color: Colors.brown,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.account_circle,
                  size: 32.0,
                  color: Colors.brown,
                ),
              )),
        ],
      ),
      body: Body(),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
