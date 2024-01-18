import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CardCourse extends StatelessWidget {
  const CardCourse({
    super.key,
    required this.cover,
    required this.views,
    required this.date,
    required this.title,
    required this.desc,
    required this.price,
  });
  final String cover;
  final String views;
  final String date;
  final String title;
  final String desc;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: 368,
        clipBehavior: Clip.hardEdge,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFECEEF4)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 366,
              height: 192,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: 366,
                    height: 192,
                    child: Image(
                      image: AssetImage(cover),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      child: Container(
                        width: 74,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 6),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_outline_rounded,
                              size: 18,
                            ),
                            Text(
                              views,
                              style: TextStyle(
                                color: Color(0xFF8211FB),
                                fontSize: 14,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w700,
                                height: 0.11,
                                letterSpacing: 0.40,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 270,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            color: Color(0xFF777795),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Color(0xFF0A0A0A),
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              desc,
                              style: TextStyle(
                                color: Color(0xFF0A0A0A),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                              color: Color(0xFF8211FB),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            child: Material(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Color(0xFF8211FB),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
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
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 8),
                                      child: Center(
                                        child: Text(
                                          "Enroll Now",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
