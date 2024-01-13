import 'package:edusen/my_flutter_app_icons.dart';
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
    final pushAndBack = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
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
        } else {
          Navigator.pushReplacementNamed(context, RegisterPage.route);
        }
        return false;
      },
      child: Title(
        title: "Register | Edusen",
        color: Colors.blue,
        child: Scaffold(
          body: Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 565,
                    color: Color(0xFF8211FB),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Belajar ',
                                style: TextStyle(
                                  color: Color(0xFFEEF9FE),
                                  fontSize: 48,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              WidgetSpan(
                                  child: Container(
                                padding: EdgeInsets.only(left: 10),
                                color: Colors.white,
                                child: Text(
                                  'gratis',
                                  style: TextStyle(
                                    color: Color(0xFF4C4CFF),
                                    fontSize: 48,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              )),
                              TextSpan(
                                text: ' dimana saja,\nkapan saja! ',
                                style: TextStyle(
                                  color: Color(0xFFEEF9FE),
                                  fontSize: 48,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: -112,
                      left: 213,
                      child: Container(
                        width: 225,
                        height: 225,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      top: -177,
                      left: 393,
                      child: Container(
                        width: 354,
                        height: 354,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      top: 391,
                      left: -105,
                      child: Container(
                        width: 354,
                        height: 354,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      bottom: -244,
                      right: -315,
                      child: Container(
                        width: 600,
                        height: 600,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      bottom: -210,
                      right: 83,
                      child: Container(
                        width: 354,
                        height: 354,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                ],
              ),
              Flexible(
                flex: 1,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(70),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            // color: Colors.grey,
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, right: 60),
                                    child: Container(
                                      height: 1,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF333333)),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF333333),
                                            shape: OvalBorder(),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Create Your Account',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: Color.fromARGB(
                                                255, 168, 168, 168),
                                            shape: OvalBorder(),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '2',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Scan Your Face',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0x7F333333),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
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
                                ),
                              ],
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
                                        'Username',
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
                                        cursorColor:
                                            Color.fromARGB(255, 82, 82, 82),
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                        ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(0),
                                          filled: true,
                                          fillColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          hintText: "Username",
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent,
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
                                        cursorColor:
                                            Color.fromARGB(255, 82, 82, 82),
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                        ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(0),
                                          filled: true,
                                          fillColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          hintText: "Email",
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent,
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
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 7),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
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
                                            child:
                                                Text.rich(TextSpan(children: [
                                              WidgetSpan(
                                                  child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8),
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
                                        cursorColor:
                                            Color.fromARGB(255, 82, 82, 82),
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                        ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(0),
                                          filled: true,
                                          fillColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          hintText: "Password",
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0)),
                                        ),
                                      ),
                                    ),
                                    Text(
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
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'By creating an account, you agree to our\n',
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
                              padding: EdgeInsets.only(top: 32),
                              child: Container(
                                  width: 270,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(0),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromRGBO(
                                                    0, 0, 0, 0.25))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
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
                                      ),
                                    ),
                                  ))),
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
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
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
