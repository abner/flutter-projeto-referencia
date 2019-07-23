import 'package:flutter/material.dart';
import 'package:projeto_referencia/src/pages/home_page.dart';
import 'package:projeto_referencia/src/pages/about_page.dart';




var appRoutes = <String, WidgetBuilder>{
  //"/": (BuildContext context) => new HomePage(title: "Meu Aplicativo em Flutter ®"),
  "/sobre": (BuildContext context) => new AboutPage()
};