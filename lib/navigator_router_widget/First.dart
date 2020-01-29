import 'package:flutter/material.dart';
import 'package:hello_world/navigator_router_widget/Second.dart';

class First extends StatelessWidget {
  const First({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Primer Pantalla Screen"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Mostrar Pantalla"),
          onPressed: () {
            Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new Second())
            );
          },
        ),
      ),
    );
  }
}


