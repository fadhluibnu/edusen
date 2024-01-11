import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page",
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromARGB(255, 76, 76, 255),
          child: Stack(
            children: [
              Center(
                child: IntrinsicHeight(
                  child: Container(
                    width: 1114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Row(
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
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 32),
                                  child: ElevatedButton(
                                      onPressed: () {},
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
                                const Padding(
                                    padding: EdgeInsets.only(top: 32),
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
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
                                            style: TextStyle(
                                              color: Color(0xFF111111),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              decoration: TextDecoration.underline,
                                              height: 0,
                                            ),
                                          ),
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
                            child: Container(height: 5, color: Colors.black))
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
