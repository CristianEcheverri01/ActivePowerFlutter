import 'package:app/complementos/appbar.dart';
import 'package:app/complementos/menu.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, 'Perfil'),
      drawer: getDrawer(context),
      body: Container(
        child: new Column(
          children: [
            new Icon(
              Icons.account_box,
              size: 170.0,
              color: Colors.blue,
            ),
            new Text('perfilsito(tab 4)')
          ],
        ),
      ),
    );
  }
}
