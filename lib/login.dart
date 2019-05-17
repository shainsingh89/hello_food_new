import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'main.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Image.asset("assets/images/login.jpeg"),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(right: 28.0),
                    child: Column(children: <Widget>[
                      new Text(
                        "Welcome to Hello Food",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            height: 2.0,
                            color: HexColor("#B1A582"),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
                Padding(
                    padding: EdgeInsets.only(
                        left: 30.0, top: 10.0, bottom: 15.0, right: 30.0),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                        ))),
                Padding(
                    padding: EdgeInsets.only(
                        left: 30.0, top: 10.0, bottom: 15.0, right: 30.0),
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                        ))),
                Padding(
                  padding:
                  EdgeInsets.only(
                      left: 30.0, top: 20.0, bottom: 15.0, right: 30.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: HexColor("#B1A582"),
                          child: Container(
                            height: 50,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("Log In",
                                    style: TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.center)),
                          ),
                          onPressed: () {
                            moveToHomeScreen();
                          },
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(
                                  30.0)))), /* new InkWell(
            highlightColor: Colors.blue,
              onTap: () => moveToHomeScreen(),
              child: new Container(
                //width: 100.0,
                height: 50.0,
                
                decoration: new BoxDecoration(
                  color: HexColor("#B1A582"),
                  borderRadius: new BorderRadius.circular(25.0),
                ),
                child: new Center(
                  child: new Text(
                    'Log In',
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              )),*/
                ),
                Padding(
                  padding:
                  EdgeInsets.only(
                      left: 30.0, top: 30.0, bottom: 15.0, right: 30.0),
                  child: Text(
                    "Create new account",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: HexColor("#B1A582")),
                  ),
                )
              ],
            )));
  }

  void moveToHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
