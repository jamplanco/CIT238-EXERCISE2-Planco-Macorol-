class Coffee {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  Coffee(
      {required this.name,
      required this.type,
      required this.shortDesc,
      required this.desc,
      required this.image,
      required this.rate,
      required this.price});
}

List<Coffee> menu = [
  Coffee(
      name: "Cagbang",
      type: 'Hot',
      shortDesc: "Coffee + Condensada (strong and sweet)",
      desc:
          "“Spanish Latte is a twist on the Vietnamese Coffee. Baristas make a show out of pouring two hot espresso shots over a cup of fresh milk, ice cubes, and a base of condensed milk, creating a cup with layers of different colours and flavours.”",
      image: "assets/cagbang.png",
      rate: 5,
      price: 90),
  Coffee(
      name: "Cappucino",
      type: "Iced",
      shortDesc: "Espresso shot + Milk + Cocoa Powder",
      desc:
          "espresso-based coffee drink that is prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon or chocolate powder.",
      image: "assets/cappuccino.jpg",
      rate: 5,
      price: 120),
  Coffee(
      name: "Espresso",
      type: "Hot",
      shortDesc: "Pure coffee in a shot glass",
      desc:
          "Espresso shots are brew in high pressure and typically served as a single or double shot. They can also be combined with steamed milk to make flavoured drinks, like cappuccinos and lattes.",
      image: "assets/espresso.png",
      rate: 5,
      price: 95),
  Coffee(
      name: "Spanish Latte",
      type: "Iced",
      shortDesc: "Coffee + Milk + Condensada",
      desc:
          "“Spanish Latte is a twist on the Vietnamese Coffee. Baristas make a show out of pouring two hot espresso shots over a cup of fresh milk, ice cubes, and a base of condensed milk, creating a cup with layers of different colours and flavours.”",
      image: "assets/spanishlatte.png",
      rate: 5,
      price: 120),
];
