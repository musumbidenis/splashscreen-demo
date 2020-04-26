import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2000);
    return new Timer(_duration, navigate);
  }

  void navigate() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: Image(image: AssetImage('assets/01.png')
        ),
        ),
      ),
      bottomSheet: Container(
        height:50,
        width:double.infinity,
        child: Center(
          child: Text("Developed by | musumbidenis",
          style: TextStyle(color: Colors.grey, fontSize:15),
          )
        ),
      )
    );
  }
}
