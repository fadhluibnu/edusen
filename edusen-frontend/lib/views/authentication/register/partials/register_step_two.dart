import 'package:camera/camera.dart';
import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:edusen/views/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterStepTwo extends StatefulWidget {
  const RegisterStepTwo({super.key, this.submitForm, required this.cameras});

  final Function? submitForm;
  final List<CameraDescription> cameras;

  @override
  State<RegisterStepTwo> createState() => _RegisterStepTwoState();
}

class _RegisterStepTwoState extends State<RegisterStepTwo> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.cameras[0],
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                'Scan Your Face',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Already have an ccount?',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                      text: ' Log in',
                      style: const TextStyle(
                        color: Color(0xFF111111),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        height: 0,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LoginPage(cameras: widget.cameras)))),
                ],
              ),
            ),
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                      width: 326,
                      height: 366,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: CameraPreview(_controller));
                } else {
                  return Center(
                      child: Container(
                          width: 326,
                          height: 366,
                          child: const CircularProgressIndicator()));
                }
              },
            ),
            // Padding(
            //     padding: EdgeInsets.only(top: 32),
            //     child: Center(
            //       child: SizedBox(
            //         width: 326,
            //         height: 366,
            //         child: Image(
            //           image: AssetImage("assets/images/image120.jpg"),
            //           fit: BoxFit.contain,
            //         ),
            //       ),
            //     )),
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: Center(
                child: Text(
                  'Position your face in front of the camera',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Material(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF8211FB)),
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: const Color.fromRGBO(0, 0, 0,
                          0.5), //untuk mengganti animasi warna ketika di klik
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                    login: "true", cameras: widget.cameras)));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Center(
                            child: Text(
                          'Finish',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Already have an ccount?',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                        text: 'Log in  ',
                        style: const TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          height: 0,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LoginPage(cameras: widget.cameras)))),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
