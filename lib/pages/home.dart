import 'package:app/complementos/appbar.dart';
import 'package:app/complementos/menu.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, 'Rutinas Gratuitas'),
      drawer: getDrawer(context),
      body: Container(
        child: new Column(
          children: [
            new Icon(
              Icons.home,
              size: 170.0,
              color: Colors.blue,
            ),
            new Text('homi(tab 1)')
          ],
        ),
      ),
    );
  }
}
