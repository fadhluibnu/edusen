import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SectionOne extends StatefulWidget {
  const SectionOne({super.key});

  @override
  State<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      // color: Colors.blue,
      height: 752.54,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        // clipBehavior: Clip.antiAlias,
        alignment: Alignment.centerRight,
        children: [
          Container(
            width: 778.88,
            height: 752.54,
            child: const Image(
              image: AssetImage("assets/images/image-header.png"),
              fit: BoxFit.cover,
            ),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Flexible(
              flex: 1,
              child: Container(
                // color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Learn a New Skill\nEveryday, Anytime, and Anywhere.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 56,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top:12),
                      child: SizedBox(
                        width: 501,
                        child: Opacity(
                          opacity: 0.60,
                          child: Text(
                            'Discover endless possibilities! Learn a new skill every day, anytime, and anywhere with convenience at your fingertips.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:58),
                      child: SizedBox(
                        width: 409,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
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
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 15),
                                      child: Center(
                                        child: Text(
                                          'Start Trial',
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
                            ),
                            Material(
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
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 15),
                                      child: Center(
                                        child: Text(
                                          'Scroll Down',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF8211FB),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(),
            )
          ]),
        ],
      ),
    );
  }
}
