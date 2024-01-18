import 'package:edusen/views/partials/footer.dart';
import 'package:edusen/views/partials/home_partials/section-five.dart';
import 'package:edusen/views/partials/home_partials/section-four.dart';
import 'package:edusen/views/partials/home_partials/section-one.dart';
import 'package:edusen/views/partials/home_partials/section-seven.dart';
import 'package:edusen/views/partials/home_partials/section-six.dart';
import 'package:edusen/views/partials/home_partials/section-three.dart';
import 'package:edusen/views/partials/home_partials/sertion-two.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:edusen/views/partials/navbar.dart';
import 'package:camera/camera.dart';

class HomeArguments {
  final String login;

  HomeArguments({required this.login});
}

class HomePage extends StatefulWidget {
  static const String route = '/';
  const HomePage({super.key, required this.cameras, required this.login});
  final List<CameraDescription> cameras;
  final String login;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Title(
        color: Colors.blue,
        title: "Edusen - Learn a New Skill Everyday",
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 118),
                  child: Navbar(login: widget.login, cameras: widget.cameras,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 118),
                  child: SectionOne(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 118, top: 50, bottom: 50),
                  child: SectionTwo(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 0, top: 50),
                  child: SectionThree(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 118, top: 100, bottom: 50),
                  child: SectionFour(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 118, top: 100, bottom: 50),
                  child: SectionFive(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 32, bottom: 0),
                  child: SectionSix(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 118, top: 26, bottom: 0),
                  child: SectionSeven(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 118, right: 118, top: 100, bottom: 0),
                  child: Footer(),
                ),
              ],
            ),
          ),
        ));
  }
}
