import 'package:flutter/material.dart';
import 'package:castro_drawerv2/drawer_menu.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Esta línea elimina la banda de depuración
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffd5f1),
          title: Text("filas row 1"),
        ),
        drawer: DrawerMenu(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(0.0),
              color: Colors.cyanAccent,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              padding: const EdgeInsets.all(0.0),
              color: Color(0xffed18e3),
              width: 80.0,
              height: 80.0,
            ),
            Container(
              padding: const EdgeInsets.all(0.0),
              color: Color(0xfffffc00),
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
