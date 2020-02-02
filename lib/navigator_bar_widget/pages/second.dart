import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.watch_later, size: 170.0, color: Colors.black),
              new Text("Segundo Tab", style: new TextStyle(color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}