import 'package:app/pages/chat.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/perfil.dart';
import 'package:app/pages/premium.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(
    home: Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => new _MainState();
}

class _MainState extends State<Main> {
  int _page = 0;

  Color btn1 = Colors.grey;
  Color btn2 = Colors.grey;
  Color btn3 = Colors.grey;
  Color btn4 = Colors.grey;

  Widget _showPage = new Home();
  GlobalKey _buttonNavegationKey = GlobalKey();

  final Home _home = Home();
  final Premium _premium = Premium();
  final Chat _chat = Chat();
  final Perfil _perfil = Perfil();

  Widget _seleccion(int page) {
    switch (page) {
      case 0:
        btn1 = Colors.orange[300];
        btn3 = Colors.black54;
        btn2 = Colors.black45;
        btn4 = Colors.black54;
        return _home;
        break;
      case 1:
        btn1 = Colors.black54;
        btn3 = Colors.black54;
        btn2 = Colors.orange[300];
        btn4 = Colors.black54;
        return _premium;
        break;
      case 2:
        btn2 = Colors.black54;
        btn1 = Colors.black54;
        btn3 = Colors.orange[300];
        btn4 = Colors.black54;
        return _chat;
        break;
      case 3:
        btn1 = Colors.black54;
        btn2 = Colors.black54;
        btn3 = Colors.black54;
        btn4 = Colors.orange[300];
        return _perfil;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text('pagina no encontrada'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _buttonNavegationKey,
        index: _page,
        height: 50.0,
        items: [
          Icon(
            Icons.home_outlined,
            size: 30,
            color: btn1,
          ),
          Icon(
            Icons.star_border,
            size: 30,
            color: btn2,
          ),
          Icon(
            Icons.message_outlined,
            size: 30,
            color: btn3,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: btn4,
          )
        ],
        color: Colors.orange[100],
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _seleccion(tappedIndex);
          });
        },
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }
}
