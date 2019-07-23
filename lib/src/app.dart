import 'package:flutter/material.dart';
import 'package:projeto_referencia/src/pages/home_page.dart';
import 'package:projeto_referencia/src/colors.dart';
import 'package:projeto_referencia/src/routes.dart';


class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: appCustomColor,
        bottomAppBarColor: appCustomColor,
        fontFamily: 'Raleway',
      ),
      routes: appRoutes,
      home: HomePage(title: 'Meu Aplicativo em Flutter ®'),
    );
  }
}