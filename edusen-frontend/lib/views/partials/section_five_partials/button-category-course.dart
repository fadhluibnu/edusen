import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ButtonCategoryCourse extends StatelessWidget {
  const ButtonCategoryCourse({
    super.key,
    this.backColor,
    required this.borColor,
    this.TextColor,
   required this.text
  });

  final Color? backColor;
  final Color borColor;
  final Color? TextColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        child: Material(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: ShapeDecoration(
              color: backColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: borColor),
                borderRadius: BorderRadius.circular(180),
              ),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(50),
              color: Colors.transparent,
              child: InkWell(
                splashColor: const Color.fromRGBO(
                    0, 0, 0, 0.5), //untuk mengganti animasi warna ketika di klik
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                  child: Center(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TextColor,
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
    );
  }
}
