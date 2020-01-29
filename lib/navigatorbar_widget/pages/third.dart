import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.wallpaper, size: 170.0, color: Colors.black),
              new Text("Tercer Tab", style: new TextStyle(color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}