import 'package:flutter/material.dart';
import 'package:hello_world/navigatorbar_widget/pages/first.dart';
import 'package:hello_world/navigatorbar_widget/pages/second.dart';
import 'package:hello_world/navigatorbar_widget/pages/third.dart';

class MyNavigator extends StatefulWidget {
  MyNavigator({Key key}) : super(key: key);

  @override
  _MyNavigatorState createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Bottom Navigation Bar"),
        backgroundColor: Colors.redAccent,
      ),
      bottomNavigationBar: new Material(
        color: Colors.redAccent[100],
        child: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.alarm),
            ),
            new Tab(
              icon: new Icon(Icons.watch_later),
            ),
            new Tab(
              icon: new Icon(Icons.airplanemode_active),
            )
          ],
          controller: controller,
        ),
      ),
          body: new TabBarView(
        children: <Widget>[
          new FirstTab(),
          new SecondTab(),
          new ThirdTab()
        ],
        controller: controller,
      ),
    );
  }
}
