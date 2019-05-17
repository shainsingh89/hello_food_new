import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

import 'food_details.dart';
import 'main.dart';

BottomNavigationBar _bottomNavigationBar() {
  const TextStyle optionStyle = TextStyle(color: Colors.black);

  return BottomNavigationBar(
    currentIndex: 0, // this will be set when a new tab is tapped
    elevation: 0.0,
    items: [
      BottomNavigationBarItem(
        icon: new Icon(Icons.home, color: HexColor(primaryColor)),
        title: new Text(
          "",
          style: optionStyle,
        ),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.search, color: HexColor(primaryColor)),
        title: new Text(
          "",
          style: optionStyle,
        ),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.bookmark, color: HexColor(primaryColor)),
        title: new Text(
          "",
          style: optionStyle,
        ),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person, color: HexColor(primaryColor)),
          title: Text(
            "",
            style: optionStyle,
          ))
    ],
  );
}

class HomeScreen extends StatefulWidget {
  HomeScreen() : super();

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    double deviceHeight = queryData.size.height;

    return new Scaffold(
        bottomNavigationBar: _bottomNavigationBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(top: 60.0, left: 25.0),
                      child: Text("My CookBook",
                          style: TextStyle(
                              fontSize: 25.0,
                              color: HexColor(primaryColor),
                              fontWeight: FontWeight.bold)))),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(
                  top: 0.0,
                  left: 20.0,
                ),
                height: (deviceHeight * (55 / 100.0)),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _foodCard("vigan_salad.jpg", "Family Vegan\nSalad tips",
                        "5 family salad recipes"),
                    SizedBox(width: 15.0),
                    _foodCard("login.jpeg", "Weekend Night\nDinner tips",
                        "4 family lunch recipes"),
                    SizedBox(width: 15.0),
                    _foodCard("dessert.jpg", "Night\nDessert",
                        "4 family dessert recipes"),
                    SizedBox(width: 15.0),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 25.0),
                    child: Text(
                      "Happy Vegan Life",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  )),
              SizedBox(height: 5.0),
              Container(
                padding: EdgeInsets.only(
                  top: 0.0,
                  left: 20.0,
                ),
                height: (deviceHeight * (24 / 100.0)),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _happyVeganCard("vegan3.jpeg", "Breakfast", 4),
                    SizedBox(width: 10.0),
                    _happyVeganCard("vegan5.jpeg", "Lunch with vegitables", 3),
                    SizedBox(width: 10.0),
                    _happyVeganCard("vegan4.jpeg", "Spanish Rice and Beans", 2),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget _foodCard(String imageName, String title, String subTitle) {
    void moveToFoodDetailsScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FoodScreen()),
      );
    }

    return new GestureDetector(
        onTap: () => moveToFoodDetailsScreen(),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Container(
                  width: 250.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/' + imageName),
                          fit: BoxFit.cover)),
                  /*child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),*/
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                  /* ),*/
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Timesroman',
                              fontSize: 25.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            subTitle,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Timesroman',
                                fontSize: 15.0,
                                color: Colors.blueGrey[400],
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ))
            ],
          ),
        ));
  }

  Widget _happyVeganCard(String imageName, String title, double rating) {
    void moveToFoodDetailsScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FoodScreen()),
      );
    }

    return new GestureDetector(
      onTap: () => moveToFoodDetailsScreen(),
      child: Container(
          width: 175,
          child: Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0)),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/' + imageName),
                                  fit: BoxFit.fill)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0)),
                          )),
                    ),
                    SizedBox(height: 5.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(title),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: new StarRating(
                                size: 15.0,
                                rating: rating,
                                color: Colors.orange,
                                borderColor: Colors.grey,
                                starCount: 5,
                              ),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
