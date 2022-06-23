import 'package:flutter_application_1/bestseller.dart';

import 'header.dart';
import 'category.dart';
import 'specialtycoffee.dart';
import 'bestseller.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(size: size),
          Category(
            title: "Best Seller",
            press: () {},
          ),
          BestSeller(),
          Category(
            title: "Specialty Coffee",
            press: () {},
          ),
          SpecialtyCoffee(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
