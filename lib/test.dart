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

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1464037866556-6812c9d1c72e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
            fit: BoxFit.cover,
            ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(120),
              child: Text("hello"),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20)
              ),
              ),
          ),
        ],
      )
    );
  }
}
