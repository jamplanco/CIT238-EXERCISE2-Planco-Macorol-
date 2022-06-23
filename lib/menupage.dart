import 'bottomnavbar.dart';
import 'foodndrinks.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
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
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add_shopping_cart,
                  size: 32.0,
                  color: Colors.brown,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
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
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Style.png"), fit: BoxFit.cover)),
          child: DefaultTabController(
              length: 1,
              child: Column(
                children: <Widget>[
                  TabBar(
                    padding: const EdgeInsets.only(right: 280),
                    labelColor: Colors.black,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.transparent,
                    tabs: <Widget>[
                      Tab(
                        child: Text("Food & Drinks"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 3),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.brown,
                            ),
                          ),
                          hintText: "Search for Food & Drinks",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(width: 1.0, color: Colors.brown))),
                    ),
                  ),
                  Container(
                    height: height * 0.6,
                    child: TabBarView(
                      children: <Widget>[
                        HotCoffeePage(),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
