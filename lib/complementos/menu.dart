import 'package:flutter/material.dart';

Drawer getDrawer(BuildContext con) {
  var header = DrawerHeader(
      child: Center(
          child: Text(
    'ActivePower',
    style: TextStyle(color: Colors.orange, fontSize: 40.0),
  )));
  ListView listView = new ListView(
    children: [
      header,
      ListTile(
        leading: Icon(Icons.star_outline),
        title: Text('Comprar Premium'),
        onTap: () {},
      )
    ],
  );
  return new Drawer(
    child: listView,
  );
}
