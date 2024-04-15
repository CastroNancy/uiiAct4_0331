import 'package:flutter/material.dart';

import 'package:castro_drawerv2/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffffd5f1),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.palette,
              text: 'filas row 1',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.home)}),
          _buildDrawerItem(
              icon: Icons.palette_outlined,
              text: 'filas row 2',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.pan_tool_alt,
              text: 'filas row 3',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          _buildDrawerItem(
              icon: Icons.pan_tool_alt_outlined,
              text: 'filas row 4',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.extra)}),
          _buildDrawerItem(
              icon: Icons.panorama_photosphere_select_rounded,
              text: 'filas row 5',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.extra2)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.panorama_fish_eye_outlined,
              text: 'filas row 6',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          ListTile(
            title: Text('Nancy Castro 0331'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("paginas V2 filas row",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
