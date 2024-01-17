import 'package:camera/camera.dart';
import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterStepTwo extends StatefulWidget {
  const RegisterStepTwo({super.key, this.submitForm, this.cameraController});

  final Function? submitForm;
  final CameraController? cameraController;

  @override
  State<RegisterStepTwo> createState() => _RegisterStepTwoState();
}

class _RegisterStepTwoState extends State<RegisterStepTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
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
                  TextSpan(
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
                      style: TextStyle(
                        color: Color(0xFF111111),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        height: 0,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushReplacementNamed(
                              context,
                              LoginPage.route,
                            )),
                ],
              ),
            ),
            widget.cameraController == null
                ? Center(child: Text("Loading Camera..."))
                : !widget.cameraController!.value.isInitialized
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : CameraPreview(widget.cameraController!),
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
            Padding(
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
              padding: EdgeInsets.only(top: 32),
              child: Material(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(0, 0, 0, 0.25)),
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(0, 0, 0,
                          0.5), //untuk mengganti animasi warna ketika di klik
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        widget.submitForm?.call();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15),
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
              padding: EdgeInsets.only(top: 16),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
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
                        style: TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          height: 0,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushReplacementNamed(
                                context,
                                LoginPage.route,
                              )),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
