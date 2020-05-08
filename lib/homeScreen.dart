import 'package:flutter/material.dart';
import 'package:splash_screen/popupmenu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
        actions: <Widget>[
          PopupOptionMenu(),
        ],
      ),
      body: new Center(
        child: new Text('Welcome to Home.!'),
      ),
    );
  }
}