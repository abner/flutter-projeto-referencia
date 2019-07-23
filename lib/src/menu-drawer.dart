import 'package:flutter/material.dart';

buildAppDrawer(BuildContext context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('CPF: 80129498572'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Dependentes'),
          onTap: () {
            // Update the state of the app.
            Navigator.pop(context);
// ...
          },
        ),
        ListTile(
          title: Text('Configurações'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}