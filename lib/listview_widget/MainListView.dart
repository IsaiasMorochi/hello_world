import 'package:flutter/material.dart';
import 'package:hello_world/listview_widget/Contact.dart';

class MainListView extends StatelessWidget {
  const MainListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Contactos"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Contact(),
    );
  }
}