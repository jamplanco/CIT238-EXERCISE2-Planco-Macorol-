import 'package:flutter/material.dart';
import 'package:flutter_application_1/menupage.dart';

class SpecialtyCoffee extends StatelessWidget {
  const SpecialtyCoffee({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SpecialtyCoffeeCard(
            image: "assets/cappuccino.jpg",
            press: () {},
          ),
          SpecialtyCoffeeCard(
            image: "assets/americano.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class SpecialtyCoffeeCard extends StatelessWidget {
  const SpecialtyCoffeeCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 10,
          bottom: 10,
        ),
        width: size.width * 0.6,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
