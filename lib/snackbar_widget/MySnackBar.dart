import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar Demo"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: new Text("Desplegar SnackBar"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Hola soy un snackbar :)"),
          duration: new Duration(seconds: 5),
          action: new SnackBarAction(
            label: "Click Aqui",
            textColor: Colors.redAccent,
            onPressed: () {
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text("Hola, nuevamente :)"),
              ));
            },
          ),
        ));
      },
    );
  }
}
