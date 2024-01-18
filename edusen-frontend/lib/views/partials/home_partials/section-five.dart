import 'package:edusen/views/partials/section_five_partials/button-category-course.dart';
import 'package:edusen/views/partials/section_five_partials/card-course.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SectionFive extends StatefulWidget {
  const SectionFive({super.key});

  @override
  State<SectionFive> createState() => _SectionFiveState();
}

class _SectionFiveState extends State<SectionFive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discover Course & Bootcamp',
                style: TextStyle(
                  color: Color(0xFF080C2C),
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                // width: 149,
                child: Material(
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
                              horizontal: 40, vertical: 14),
                          child: Center(
                            child: Text(
                              'Show All',
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
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonCategoryCourse(
                    borColor: Color(0xFF8211FB),
                    text: "All Program",
                    backColor: Color(0xFF8211FB),
                    TextColor: Colors.white,
                  ),
                  ButtonCategoryCourse(
                    borColor: Color(0x33230F0F),
                    text: "UI/UX Design",
                    backColor: Colors.white,
                    TextColor: Color(0xFF230F0F),
                  ),
                  ButtonCategoryCourse(
                    borColor: Color(0x33230F0F),
                    text: "Product Management",
                    backColor: Colors.white,
                    TextColor: Color(0xFF230F0F),
                  ),
                  ButtonCategoryCourse(
                    borColor: Color(0x33230F0F),
                    text: "Digital Marketing",
                    backColor: Colors.white,
                    TextColor: Color(0xFF230F0F),
                  ),
                  ButtonCategoryCourse(
                    borColor: Color(0x33230F0F),
                    text: "Music",
                    backColor: Colors.white,
                    TextColor: Color(0xFF230F0F),
                  ),
                  ButtonCategoryCourse(
                    borColor: Color(0x33230F0F),
                    text: "Copy Writer",
                    backColor: Colors.white,
                    TextColor: Color(0xFF230F0F),
                  ),
                  ButtonCategoryCourse(
                    borColor: Color(0x33230F0F),
                    text: "Web Development",
                    backColor: Colors.white,
                    TextColor: Color(0xFF230F0F),
                  ),
                ],
              ),
            ),
          ),
          Wrap(
            spacing: 20,
            // crossAxisAlignment: W,
            children: [
              CardCourse(
                cover: "assets/images/product-management-basic.png",
                views: "120",
                date: "1 - 28 July 2022",
                title: "Product Management Basic - Course",
                desc: "Product Management Masterclass, you will learn with Sarah Johnson - Head of Product Customer Platform Gojek Indonesia.",
                price: "Rp 150.000",
              ),
              CardCourse(
                cover: "assets/images/front-end-developer.png",
                views: "120",
                date: "1 - 28 July 2022",
                title: "Front End Developer - Basic",
                desc: "Master HTML, CSS, and JavaScript in our Front End Developer Basic Course. Build dynamic websites with confidence.",
                price: "Rp 0",
              ),
              CardCourse(
                cover: "assets/images/back-end-developer.png",
                views: "120",
                date: "1 - 28 July 2022",
                title: "Back End Developerr -Basic",
                desc: "Back End Developer Basic Course, Master server-side programming for robust and scalable web applications",
                price: "Rp 150.000",
              ),
              CardCourse(
                cover: "assets/images/music-vocal.png",
                views: "120",
                date: "1 - 28 July 2022",
                title: "Music - Vokal",
                desc: "Develop your melody interpretation skills to add depth and nuance to your performances.",
                price: "Rp 0",
              ),
              CardCourse(
                cover: "assets/images/guitar.png",
                views: "120",
                date: "1 - 28 July 2022",
                title: "Music - Guitar",
                desc: "Unleash your guitar potential From basics to advanced techniques, amplify your musical journey. Enroll now",
                price: "Rp 20.000",
              ),
              CardCourse(
                cover: "assets/images/copywriter.png",
                views: "120",
                date: "1 - 28 July 2022",
                title: "Copy Writer - Voice to Teks",
                desc: "Master the art: Copywriting - Voice to Text. Elevate skills seamlessly. Enroll for excellence!",
                price: "Rp 150.000",
              ),
            ],
          )
        ],
      ),
    );
  }
}
