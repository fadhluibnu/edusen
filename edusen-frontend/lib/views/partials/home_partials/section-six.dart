import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SectionSix extends StatelessWidget {
  const SectionSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.only(left: 118, right: 118),
      decoration: BoxDecoration(color: Color(0xFF8211FB)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Still confused about your career choice? consult with our experts',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 209,
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
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
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            child: Center(
                              child: Text(
                                "Contact Us",
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
                ),
              ),
            ],
          )),
          SizedBox(
            width: 569,
            height: 569,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  child: SizedBox(
                    width: 569,
                    height: 569,
                    child: Image(
                        image: AssetImage(
                            "assets/images/back-person-section-6.png")),
                  ),
                ),
                Positioned(
                  top: 2,
                  child: SizedBox(
                      height: 440,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Image(
                            image: AssetImage(
                                "assets/images/person-in-section6.png")),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
