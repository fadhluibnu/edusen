import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:edusen/views/authentication/register/register.dart';
import 'package:edusen/views/home.dart';
import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'package:path/path.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> checkAndRequestMicrophonePermission() async {
  // Periksa izin microphone
  var status = await Permission.microphone.status;

  if (status.isGranted) {
    // Izin sudah diberikan
    print("Microphone permission is granted");
  } else {
    // Jika izin belum diberikan, minta izin
    var result = await Permission.microphone.request();
    if (result.isGranted) {
      print("Microphone permission granted after request");
    } else {
      print("Microphone permission denied");
      // Handle akses ditolak oleh pengguna
    }
  }
}


void main() async {
  String route = "/";
  bool auth = true;
  if (auth) {
    route = "/";
  }

  // AudioPlayer audioPlayer;
  // // audioPlayer = AudioPlayer();

  WidgetsFlutterBinding.ensureInitialized();
  var cameras = null;
  try {
    cameras = await availableCameras();
  } catch (e) {
    cameras = [];
  }

  await checkAndRequestMicrophonePermission();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    title: "Main Page",
    // onGenerateInitialRoutes: (initialRoute) {
    //   return [
    //     MaterialPageRoute(
    //       builder: (context) => HomePage(cameras: cameras,),
    //       settings: RouteSettings(
    //         name: HomePage.route,
    //         arguments: HomeArguments(login: "false"),
    //       ),
    //     ),
    //   ];
    // },
    routes: {
      LoginPage.route: (context) => LoginPage(cameras: cameras),
      RegisterPage.route: (context) => RegisterPage(
            cameras: cameras,
          ),
      HomePage.route: (context) => HomePage(login: "false", cameras: cameras),
    },
  ));
}
