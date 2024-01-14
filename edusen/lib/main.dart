import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:edusen/views/authentication/register/register.dart';
import 'package:flutter/material.dart';

void main() {
  String route = "/";
  bool auth = true;
  if (auth) {
    route = "/login";
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: route,
    title: "Main Page",
    routes: {
      LoginPage.route: (context) => LoginPage(),
      RegisterPage.route: (context) => RegisterPage(),
    },
  ));
}