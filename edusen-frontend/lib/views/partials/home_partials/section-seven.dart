import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SectionSeven extends StatelessWidget {
  const SectionSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 86, horizontal: 0),
      child: Row(
        children: [
          Container(
            width: 546,
            height: 397,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/person-in-section7.png"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 90),
              child: Container(
                height: 340,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What did they say',
                          style: TextStyle(
                            color: Color(0xFF230F0F),
                            fontSize: 40,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Higher education in the era of the industrial revolution 4.0 requires breakthrough learning using digital platforms that answer the challenges of millennial students to study anywhere, anytime and with leading-edge ICT technology. From student recruitment to teaching and learning administration processes,',
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 20,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Briana Patton',
                              style: TextStyle(
                                color: Color(0xFF1B1C4D),
                                fontSize: 26,
                                fontFamily: 'Maven Pro',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Designer at Salesforce',
                              style: TextStyle(
                                color: Color(0xFF7F848E),
                                fontSize: 16,
                                fontFamily: 'Maven Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        Icon(Icons.arrow_circle_right_outlined, size: 60, color: Color.fromRGBO(35, 15, 15, 1),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
