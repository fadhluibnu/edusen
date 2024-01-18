import 'package:flutter/widgets.dart';

class SectionTwo extends StatefulWidget {
  const SectionTwo({super.key});

  @override
  State<SectionTwo> createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 350,
            child: Text(
              'We partner with more than 10+ companies',
              style: TextStyle(
                color: Color(0xFF230E0E),
                fontSize: 28,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90,
                child: const Image(
                  image: AssetImage("assets/images/skill-share.png"),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 30),
              Container(
                height: 60,
                child: const Image(
                  image: AssetImage("assets/images/udemy.png"),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 30),
              Container(
                height: 60,
                child: const Image(
                  image: AssetImage("assets/images/google.png"),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 30),
              Container(
                height: 60,
                child: const Image(
                  image: AssetImage("assets/images/coursera.png"),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 30),
              Container(
                height: 60,
                child: const Image(
                  image: AssetImage("assets/images/idf-fundation.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
