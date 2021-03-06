import 'dart:convert';
import 'dart:math';
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

String dataAPI = "https://prod-12.southeastasia.logic.azure.com:443/workflows/6af05f1da3bd49dc91537298f58e4dc2/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=XIc9mMxXfXD-t-sUdMdvGmTvg34rZwAnIVmOkn67ex0";

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage('picture/FCMBackground.png'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            child: Align(
              child: Image.asset(
                'picture/FCMLogo_white.png',
                height: 100,
                width: 250,
              ),
              alignment: Alignment.topRight,
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left empty space
              Expanded(
                  flex: 2,
                  child: Container(
                      //   color: fcmClarityWhite,
                      //   child: Text('hello'),
                      )),
              // Login
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 30, 0, 30),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Username'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password'),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()),
                                );
                              },
                              child: Text(
                                'Forgot your password?',
                                style: TextStyle(
                                  color: fcmGreen,
                                  decoration: TextDecoration.underline,
                                ),
                              ))),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                              child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 20)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              fcmMidnightBlack),
                                    ),
                                    child: Text('Login'),
                                  )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  width: 500,
                  // height: 320,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  decoration: BoxDecoration(
                    color: fcmClarityWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: Text(
                            'User Provisioning for FCM Hub Demo Sites',
                            style: TextStyle(
                              color: fcmClarityWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Powered by',
                          style: TextStyle(
                            color: fcmClarityWhite,
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            'picture/FCMWhite.png',
                            height: 20,
                          )),
                    ],
                  ))
            ],
          )
        ],
      ),
    )));
  }
}

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Return"),
      ),
    ));
  }
}
