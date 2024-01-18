import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:edusen/views/authentication/register/register.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key, this.login, required this.cameras});
  final String? login;
  final List<CameraDescription> cameras;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // width: 97,
            height: 32,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 24,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Image(
                        image: AssetImage("assets/images/logoedusen.png"))),
                const SizedBox(width: 12),
                const Text(
                  'Edusen',
                  style: TextStyle(
                    color: Color(0xFF8211FB),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 265,
            height: 19,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {});
                  },
                  child: const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {});
                  },
                  child: const Text(
                    'Course',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {});
                  },
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.login == "false"
                      ? Material(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF3F2FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF8211FB)),
                                borderRadius: BorderRadius.circular(180),
                              ),
                            ),
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
                                          builder: (context) => LoginPage(
                                              cameras: widget.cameras)));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 12),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF8211FB),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                  widget.login == "false"
                      ? Material(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: const Color(0xFF8211FB),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFF8211FB)),
                                borderRadius: BorderRadius.circular(180),
                              ),
                            ),
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
                                          builder: (context) => RegisterPage(
                                              cameras: widget.cameras)));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 12),
                                  child: Center(
                                    child: Text(
                                      'Sign Up',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFF3F2FF),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                  InkWell(
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.mic_none_rounded,
                        color: Color(0xFF8211FB),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
