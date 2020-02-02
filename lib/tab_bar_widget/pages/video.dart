import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(Icons.ondemand_video, size: 170.0, color: Colors.green),
          new Text("Segundo Tab")
        ],
      ),
    );
  }
}