import 'package:edusen/my_flutter_app_icons.dart';
import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class RegisterStepOne extends StatefulWidget {
  const RegisterStepOne(
      {super.key,
      this.step,
      this.nextStep,
      this.name_controller,
      this.email_controller,
      this.password_controller,
      required this.cameras});
  final Function? nextStep;
  final int? step;
  final TextEditingController? name_controller;
  final TextEditingController? email_controller;
  final TextEditingController? password_controller;
  final List<CameraDescription> cameras;

  @override
  State<RegisterStepOne> createState() => _RegisterStepOneState();
}

class _RegisterStepOneState extends State<RegisterStepOne> {
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
              'Create an account',
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
          Container(
              padding: const EdgeInsets.only(top: 32),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Text(
                        'Name',
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
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color.fromARGB(76, 102, 102, 102))),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: TextField(
                        controller: widget.name_controller,
                        onChanged: (value) {
                          // print(widget.name_controller?.text);
                        },
                        cursorColor: const Color.fromARGB(255, 82, 82, 82),
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Username",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0)),
                        ),
                      ),
                    )
                  ])),
          Container(
              padding: const EdgeInsets.only(top: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Text(
                        'Email',
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
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color.fromARGB(76, 102, 102, 102))),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: TextField(
                        controller: widget.email_controller,
                        onChanged: (value) {
                          // print(widget.email_controller?.text);
                        },
                        cursorColor: const Color.fromARGB(255, 82, 82, 82),
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Email",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0)),
                        ),
                      ),
                    )
                  ])),
          Container(
              padding: const EdgeInsets.only(top: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Password',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print("hide");
                            },
                            child: const Text.rich(TextSpan(children: [
                              WidgetSpan(
                                  child: Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Icon(
                                  MyFlutterApp.eye_closed,
                                  size: 14,
                                  color: Color(0xCC666666),
                                ),
                              )),
                              TextSpan(
                                text: 'Hide',
                                style: TextStyle(
                                  color: Color(0xCC666666),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              )
                            ])),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color.fromARGB(76, 102, 102, 102))),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: TextField(
                        controller: widget.password_controller,
                        onChanged: (value) {
                          // print(widget.password_controller?.text);
                        },
                        cursorColor: const Color.fromARGB(255, 82, 82, 82),
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0)),
                        ),
                      ),
                    ),
                    const Text(
                      'Use 8 or more characters with a mix of letters, numbers & symbols',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    )
                  ])),
          const Padding(
            padding: EdgeInsets.only(top: 32),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'By creating an account, you agree to our\n',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms of use',
                    style: TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                ],
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
                      widget.nextStep?.call();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: Text(
                        'Next',
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
                        color: const Color(0xFF111111),
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
      ),
    );
  }
}
