import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SectionFour extends StatefulWidget {
  const SectionFour({super.key});

  @override
  State<SectionFour> createState() => _SectionFourState();
}

class _SectionFourState extends State<SectionFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              width: 550,
              height: 440,
              // color: Colors.black,
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: 550,
                    height: 440,
                    child: const Image(
                      image: AssetImage(
                          "assets/images/educational-tech-section-2.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 550,
                    height: 440,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0.00, -1.00),
                        end: const Alignment(0, 1),
                        colors: [Colors.black.withOpacity(0), Colors.black],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(16),
                      child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Educational technology',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(children: [
                              Icon(Icons.location_on_outlined,
                                  color: Colors.white),
                              Text(
                                'Bandung, Indonesia',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ])
                          ]))
                ],
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Edusen helps you Become Experienced',
                    style: TextStyle(
                      color: Color(0xFF230F0F),
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      'Owlearn provides e-learning solutions for companies, universities and individual professionals. It allows users to create courses, and provides an integrated learning management system. Its offerings include digital course tools, study materials, IT infrastructure and other operations.',
                      style: TextStyle(
                        color: Color(0xFF230F0F),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: SizedBox(
                      width: 269,
                      child: Material(
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
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
