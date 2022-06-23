import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          BestSellerCard(
            image: "assets/cagbang.png",
            title: "Cagbang",
          ),
          BestSellerCard(
            image: "assets/spanishlatte.png",
            title: "Spanish Latte",
          ),
          BestSellerCard(
            image: "assets/cinaffle.png",
            title: "Cinaffle",
          ),
          BestSellerCard(
            image: "assets/espresso.png",
            title: "Espresso Shot",
          ),
        ],
      ),
    );
  }
}

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 30,
      ),
      width: size.width * 0.25,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: Colors.brown.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
