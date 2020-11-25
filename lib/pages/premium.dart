import 'package:app/complementos/appbar.dart';
import 'package:app/complementos/menu.dart';
import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
  const Premium({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, 'Premium'),
      drawer: getDrawer(context),
      body: Container(
        child: new Column(
          children: [
            new Icon(
              Icons.star_border,
              size: 170.0,
              color: Colors.blue,
            ),
            new Text('premiumsito(tab 2)')
          ],
        ),
      ),
    );
  }
}
