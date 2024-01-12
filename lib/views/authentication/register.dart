import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:edusen/views/route/push_and_back.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  static const String route = '/register';

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    final pushAndBack = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    String back = "/";
    if (pushAndBack['route'] != null) {
      setState(() {
        back = pushAndBack['route'].toString();
      });
    }
    print(back);
    return WillPopScope(
      onWillPop: () async { 
        if (back != "/") {
          Navigator.pushReplacementNamed(context, back);
          return false;
        }
        Navigator.pushReplacementNamed(context, RegisterPage.route);
        return false;
      },
      child: Title(
        title: "Register | Edusen",
        color: Colors.blue,
        child: Scaffold(
            body: Text("Test"),
          ),
      ),
    );
  }
}