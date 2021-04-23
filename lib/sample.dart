import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Color fcmGreenHighlight = Color(0xFFE9F9E3);
Color fcmDeepGreen = Color(0xFF17BE17);
Color fcmGreen = Color(0xFF00DE00);
Color fcmClarityWhite = Color(0xFFFFFFFF);
Color fcmCharcoalGrey = Color(0xFF505050);
Color fcmMidnightBlack = Color(0xFF000000);
Color fcmGreyOne = Color(0xFFF5F5F5);
Color fcmGreyTwo = Color(0xFFE5E5E5);
Color fcmGreyThree = Color(0xFFD9D9D9);
Color fcmGreyFour = Color(0xFFC6C6C6);
Color fcmGreyFive = Color(0xFFAAAAAA);
Color fcmGreySix = Color(0xFF818181);
Color fcmRed = Colors.red;

const fcmLogo = 'picture/FcmLogo.png';
TextEditingController usernameInput = TextEditingController();
TextEditingController passwordInput = TextEditingController();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TC File Automation',
      home: MyHomePage(title: 'TC File Automation'),
      theme: ThemeData(fontFamily: 'IBMPlexSans'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List invoiceData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: fcmGreyOne,
          title: Stack(
            children: [
              Image.asset(
                fcmLogo,
                height: 80,
              ),
            ],
          ),
          toolbarHeight: 70,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'TC File Automation',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline3.fontSize,
                        color: Colors.black,
                        fontFamily: 'IBMPlexSans'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 2 / 5,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              left: 0.0, top: 50.0, bottom: 0.0, right: 0.0),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: usernameInput,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFFFFFF),
                              labelText: "EMAIL",
                              labelStyle: TextStyle(fontSize: 12.0),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFFAAAAAA)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFF17BE17)),
                              ),
                              //  prefixIcon: Icon(Icons.account_circle_rounded),
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(
                            left: 0.0, top: 30.0, bottom: 10.0, right: 0.0),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          textInputAction: TextInputAction.send,
                          obscureText: true,
                          controller: passwordInput,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            labelText: "PASSWORD",
                            labelStyle: TextStyle(fontSize: 12.0),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xFFAAAAAA)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xFF17BE17)),
                            ),
                            //  prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 60,
                        margin: EdgeInsets.only(
                            left: 0.0, top: 50.0, bottom: 0.0, right: 0.0),
                        child: TextButton(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                "LOG IN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .fontSize),
                              )
                            ],
                          ),
                          autofocus: true,
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(18.0),
                            elevation: 5,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new DashboardPage()));
                            Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
        appBar: AppBar(
          backgroundColor: fcmGreyOne,
          automaticallyImplyLeading: false,
          title: Stack(
            children: [
              Image.asset(
                fcmLogo,
                height: 80,
              ),
            ],
          ),
          toolbarHeight: 70,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
                child: Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 50), child: Text('')),
                Center(
                  child: Text(
                    'Welcome onboard',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline3.fontSize,
                        color: Colors.black),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.4,
                    margin: EdgeInsets.fromLTRB(0, 80, 0, 20),
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(border: Border.all(color: fcmGreen)),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
                          child: Center(
                            child: Text(
                              'DASHBOARD',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .fontSize,
                                  color: fcmMidnightBlack),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: ListTile(
                            leading: Icon(Icons.fiber_manual_record),
                            title: new Text('List of missing invoice number'),
                          ),
                          onTap: () {
                            //route to another screen
                          },
                        ),
                        GestureDetector(
                          child: ListTile(
                            leading: Icon(Icons.fiber_manual_record),
                            title:
                                new Text('List of invoice by date selection'),
                          ),
                          onTap: () {
                            //route to another screen
                          },
                        ),
                        GestureDetector(
                          child: ListTile(
                            leading: Icon(Icons.fiber_manual_record),
                            title: new Text('Reset Password'),
                          ),
                          onTap: () {
                            //route to another screen
                          },
                        ),
                        GestureDetector(
                          child: ListTile(
                            leading: Icon(Icons.fiber_manual_record),
                            title: new Text('Log out'),
                          ),
                          onTap: () {
                            usernameInput.clear();
                            passwordInput.clear();
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    )),
              ],
            ))),
      );
}
