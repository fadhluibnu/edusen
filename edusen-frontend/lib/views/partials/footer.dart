import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 288,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  image: AssetImage(
                                      "assets/images/logoedusen.png"))),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Text(
                        'Inclusive education with video courses and voice recognition for seamless learning.',
                        style: TextStyle(
                          color: Color(0xFF51565E),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 726,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Resources',
                            style: TextStyle(
                              color: Color(0xFF050D19),
                              fontSize: 22,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 60),
                            child: Text(
                              'Services',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Pricing',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Testimonials',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Blog',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Usefull links',
                            style: TextStyle(
                              color: Color(0xFF050D19),
                              fontSize: 22,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 60),
                            child: Text(
                              'Terms of Services',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Cookie Policy',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Contact us ',
                              style: TextStyle(
                                color: Color(0xFF51565E),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: 306,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Newsletter',
                                style: TextStyle(
                                  color: Color(0xFF050D19),
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 60),
                                child: Text(
                                  'Sign up and receive the lastest news via email.',
                                  style: TextStyle(
                                    color: Color(0xFF51565E),
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                76, 102, 102, 102))),
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: TextField(
                                            // controller: widget.inputController,
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
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 25,
                                                      vertical: 15),
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF8211FB),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(50),
                                                    bottomRight:
                                                        Radius.circular(50),
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                'Send',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            ]))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 1140,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF2657A4),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Copyright 2021 The Codext  All Rights Reserved.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF51565E),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
