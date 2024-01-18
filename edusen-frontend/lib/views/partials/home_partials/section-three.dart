import 'package:edusen/acheivment_icons.dart';
import 'package:edusen/togas_icons.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SectionThree extends StatefulWidget {
  const SectionThree({super.key});

  @override
  State<SectionThree> createState() => _SectionThreeState();
}

class _SectionThreeState extends State<SectionThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          width: 364,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What do You Get From Us',
                style: TextStyle(
                  color: Color(0xFF131E31),
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Unlock a world of knowledge with us. Expert-led courses, personalized feedback, and transformative learning experiences await. Join us now!',
                style: TextStyle(
                  color: Color(0xFF969696),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 267,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF8211FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.person_2_outlined,
                          color: Color.fromRGBO(11, 162, 207, 1),
                          size: 30,
                        )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Text(
                          'Professional Teacher',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Expert teachers, personalized learning. Elevate your skills with our professionals. Enroll for success.',
                          style: TextStyle(
                            color: Color(0xFFDDDDDD),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    width: 267,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8211FB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                              child: Icon(
                            Togas.togas,
                            color: Color.fromRGBO(11, 162, 207, 1),
                            size: 30,
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            'Course Certificate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Receive a prestigious course certificate. Validate your skills and showcase your achievement. Enroll now!",
                            style: TextStyle(
                              color: Color(0xFFDDDDDD),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    width: 267,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8211FB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                              child: Icon(
                            Acheivment.acheivment,
                            color: Color.fromRGBO(11, 162, 207, 1),
                            size: 30,
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            'Interesting learning',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Explore captivating learning experiences. Engage, inspire, and expand your knowledge with our interesting courses",
                            style: TextStyle(
                              color: Color(0xFFDDDDDD),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    width: 267,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8211FB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                              child: Icon(
                            Icons.play_circle_fill,
                            color: Color.fromRGBO(11, 162, 207, 1),
                            size: 30,
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            '120 Videos Course',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Explore 120 videos for immersive learning. Elevate your skills with comprehensive courses. Enroll now",
                            style: TextStyle(
                              color: Color(0xFFDDDDDD),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20,)
              ],
            ),
          ),
        ))
      ]),
    );
  }
}
