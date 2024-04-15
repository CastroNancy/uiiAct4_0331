import 'package:castro_drawerv2/drawer_menu.dart';
import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  static const String routeName = '/movies';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffd5f1),
        title: Text(" filas row 3"),
      ),
      drawer: DrawerMenu(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(color: Colors.cyanAccent, height: 80),
            flex: 2,
          ),
          Expanded(
            child: Container(color: Color(0xffed18e3), height: 80),
            flex: 3,
          ),
          Expanded(
            child: Container(color: Color(0xfffffc00), height: 80),
            flex: 4,
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
