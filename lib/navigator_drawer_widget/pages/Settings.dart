import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String routeName = "/configuración";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Configuración"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Text("Pantalla Configuración"),
        ),
      ),
    );
  }
}