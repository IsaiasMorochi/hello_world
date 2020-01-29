import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Segunda Pantalla"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){
            Navigator.pop(context); //toma el ultimo almacenado en el stack
          },
          child: new Text("Ir Atras!"),
        ),
      ),
    );
  }
}