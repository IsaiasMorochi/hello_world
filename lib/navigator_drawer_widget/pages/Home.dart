import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context) {
    var header = new DrawerHeader(
      child: new Text("Ajustes "),
    );
    var info = new AboutListTile(
      child: new Text("Informacion App"),
      applicationName: "Demo Drawer",
      applicationVersion: "v1.0",
      applicationIcon: new Icon(Icons.favorite),
      icon: new Icon(Icons.info),
    );

    ListTile _getItem(Icon icon, String description, String routeName) {
      return new ListTile(
        leading: icon,
        title: new Text(description),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    ListView listView = new ListView(children: <Widget>[
      header,
      _getItem(new Icon(Icons.home), 'Paigna Principal', "/"),
      _getItem(new Icon(Icons.battery_charging_full), 'Bateria', "/bateria"),
      _getItem(new Icon(Icons.settings), 'Configuración', "/configuración"),
      info
    ]);

    return new Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Demo Menu"),
          backgroundColor: Colors.redAccent,
        ),
        body: new Container(
          child: new Center(
            child: new Text("Pantalla Principal"),
          ),
        ),
        drawer: _getDrawer(context));
  }
}
