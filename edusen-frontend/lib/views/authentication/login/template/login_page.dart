import 'package:edusen/views/authentication/register/register.dart';
import 'package:edusen/views/route/push_and_back.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class LoginPage extends StatefulWidget {
  static const String route = '/login';

  const LoginPage({super.key, required this.cameras});
  final List<CameraDescription> cameras;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double getHeight(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return MediaQuery.of(context).size.height;
  }

  double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool camera = false;

  void activeCamera() {
    setState(() {
      camera = true;
    });
    _controller = CameraController(
      widget.cameras[0],
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
    // _controller.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   setState(() {
  //     camera = true;
  //   });
  //   _controller = CameraController(
  //     widget.cameras[0],
  //     ResolutionPreset.medium,
  //   );

  //   _initializeControllerFuture = _controller.initialize();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Title(
      title: "Login | Edusen",
      color: Colors.blue,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFF8211FB),
          child: Stack(
            children: [
              Positioned(
                  left: 212,
                  top: -176,
                  child: Container(
                    width: 352.38,
                    height: 352.38,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: OvalBorder(),
                    ),
                  )),
              Positioned(
                  left: 32.8,
                  top: -111,
                  child: Container(
                    width: 223.97,
                    height: 223.97,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: OvalBorder(),
                    ),
                  )),
              Positioned(
                  top: -64,
                  right: 114,
                  child: Container(
                    width: 223.97,
                    height: 223.97,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: OvalBorder(),
                    ),
                  )),
              Positioned(
                  top: -129,
                  right: -194,
                  child: Container(
                    width: 352.38,
                    height: 352.38,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: OvalBorder(),
                    ),
                  )),
              Positioned(
                  top: 390.0,
                  left: -154.0,
                  child: Container(
                    width: 352.38,
                    height: 352.38,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: OvalBorder(),
                    ),
                  )),
              Positioned(
                  right: 341,
                  bottom: -259,
                  child: Container(
                    width: 352.38,
                    height: 352.38,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: OvalBorder(),
                    ),
                  )),
              Positioned(
                  right: -165,
                  bottom: -285,
                  child: Container(
                    width: 597.26,
                    height: 597.26,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: OvalBorder(),
                    ),
                  )),
              Center(
                child: IntrinsicHeight(
                  child: Container(
                    width: 1114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 48, right: 48, top: 48, bottom: 48),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  "Welcome back",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40,
                                  ),
                                ),
                                const Text(
                                  "We’re so excited to see you again!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.only(top: 32),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 7),
                                            child: Text(
                                              'Email or phone number',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontSize: 16,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        76, 102, 102, 102))),
                                            padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                                top: 5,
                                                bottom: 5),
                                            child: const TextField(
                                              cursorColor: Color.fromARGB(
                                                  255, 82, 82, 82),
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontSize: 16,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w400,
                                              ),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                filled: true,
                                                fillColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                hintText: "Email",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 0)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 0)),
                                              ),
                                            ),
                                          )
                                        ])),
                                Container(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 7),
                                            child: Text(
                                              'Password',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Color(0xFF666666),
                                                  fontSize: 16,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        76, 102, 102, 102))),
                                            padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                                top: 5,
                                                bottom: 5),
                                            child: const TextField(
                                              cursorColor: Color.fromARGB(
                                                  255, 82, 82, 82),
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 82, 82, 82),
                                                fontSize: 16,
                                                fontFamily: "Poppins",
                                              ),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                //   filled: true,
                                                //   fillColor: Colors.transparent,
                                                //   hoverColor: Colors.transparent,
                                                hintText: "Password",
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 0)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 0)),
                                              ),
                                            ),
                                          )
                                        ])),
                                const Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Forget your password',
                                      style: TextStyle(
                                        color: Color(0xFF111111),
                                        fontSize: 16,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                        height: 0,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 32),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return RegisterPage();
                                        }));
                                      },
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromRGBO(
                                                      0, 0, 0, 0.25))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Text(
                                          'Log in',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 32),
                                    child: Text.rich(
                                      TextSpan(
                                        children: <InlineSpan>[
                                          const TextSpan(
                                            text: 'Don’t have an acount? ',
                                            style: TextStyle(
                                              color: Color(0xFF666666),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          TextSpan(
                                              text: 'Sign up  ',
                                              style: const TextStyle(
                                                color: Color(0xFF111111),
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.underline,
                                                height: 0,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () => Navigator
                                                        .pushReplacementNamed(
                                                            context,
                                                            RegisterPage.route,
                                                            arguments: {
                                                          'route':
                                                              LoginPage.route,
                                                        })),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    camera == false
                                        ? SizedBox(
                                          height: 366,
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Container(
                                              width: 270,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.25)),
                                              child: Material(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.transparent,
                                                child: InkWell(
                                                  splashColor: Color.fromRGBO(
                                                      0,
                                                      0,
                                                      0,
                                                      0.5), //untuk mengganti animasi warna ketika di klik
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  onTap: () {
                                                    activeCamera();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15),
                                                    child: Center(
                                                        child: Text(
                                                      'Start',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        )
                                        : FutureBuilder<void>(
                                            future: _initializeControllerFuture,
                                            builder: (context, snapshot) {
                                              if (snapshot.connectionState ==
                                                  ConnectionState.done) {
                                                return Container(
                                                    width: 326,
                                                    height: 366,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: CameraPreview(
                                                        _controller));
                                              } else {
                                                return Center(
                                                    child: Container(
                                                        width: 326,
                                                        height: 366,
                                                        child:
                                                            CircularProgressIndicator()));
                                              }
                                            },
                                          ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Text(
                                        'Log in with Face',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 40,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        'position your face in front of the camera',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    )
                                  ]),
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
