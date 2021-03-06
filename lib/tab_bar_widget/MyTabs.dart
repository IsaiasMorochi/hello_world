import 'package:flutter/material.dart';
import 'package:hello_world/tab_bar_widget/pages/contact.dart';
import 'package:hello_world/tab_bar_widget/pages/home.dart';
import 'package:hello_world/tab_bar_widget/pages/video.dart';

class MyTabs extends StatefulWidget {
  MyTabs({Key key}) : super(key: key);

  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
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
        title: new Text("Video Tabs"),
        backgroundColor: Colors.redAccent,
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.ondemand_video),
            ),
            new Tab(
              icon: new Icon(Icons.contacts),
            ),
          ],
          controller: controller,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[new Home(), new Video(), new Contact()],
        controller: controller,
      ),
    );
  }
}
