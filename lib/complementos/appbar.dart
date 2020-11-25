import 'package:flutter/material.dart';

AppBar appbar(BuildContext con, String title) {
  return AppBar(
    title: Center(
        child: Text(
      title,
      style: TextStyle(color: Colors.black),
    )),
    iconTheme: IconThemeData(color: Colors.orange[400]),
    actions: [
      Icon(
        Icons.search,
        color: Colors.black,
      )
    ],
    backgroundColor: Colors.white,
  );
}
