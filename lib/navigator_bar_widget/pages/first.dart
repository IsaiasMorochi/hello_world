import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.alarm, size: 170.0, color: Colors.black),
              new Text("Primer Tab", style: new TextStyle(color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}