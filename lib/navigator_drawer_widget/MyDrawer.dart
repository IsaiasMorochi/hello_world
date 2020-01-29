import 'package:flutter/material.dart';
import 'package:hello_world/navigator_drawer_widget/pages/Battery.dart';
import 'package:hello_world/navigator_drawer_widget/pages/Home.dart';
import 'package:hello_world/navigator_drawer_widget/pages/Settings.dart';

void main() {
   runApp(new MaterialApp(
     home: Home(),
     routes: <String, WidgetBuilder>{
       Settings.routeName: (BuildContext context) => new Settings(),
       Battery.routeName: (BuildContext context) => new Battery(),
     },
   ));
}