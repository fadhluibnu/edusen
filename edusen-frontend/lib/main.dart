import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:edusen/views/authentication/register/register.dart';
import 'package:flutter/material.dart';

import 'package:camera/camera.dart';

void main() async {
  String route = "/";
  bool auth = true;
  if (auth) {
    route = "/login";
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginPage.route,
    title: "Main Page",
    routes: {
      LoginPage.route: (context) => LoginPage(
        // cameras: cameras
        ),
      RegisterPage.route: (context) => RegisterPage(),
    },
  ));
}