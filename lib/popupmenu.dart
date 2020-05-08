import 'package:flutter/material.dart';
import 'package:splash_screen/splashScreen.dart';

class PopupOptionMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: Text("Settings", style: TextStyle(fontSize:18),),
            value: Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen())),
          ),
          PopupMenuDivider(
            height:10
          ),
          PopupMenuItem(
            child: Text("About Us", style: TextStyle(fontSize:18)),
            value:  Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen())),
          ),
        ];
      },
      icon: Icon(Icons.list),
    );
  }
}