import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(MyApp());

 const String primaryColor = "#B1A582";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // Define the default Brightness and Colors
          brightness: Brightness.light,
          primaryColor: HexColor(primaryColor),
          accentColor: Colors.cyan[600]),
        home: Login(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner : false);
  }
}



class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
