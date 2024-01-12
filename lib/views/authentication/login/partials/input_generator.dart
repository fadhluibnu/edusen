import 'package:flutter/material.dart';

class InputGenerator extends StatefulWidget {
  const InputGenerator({
    super.key, 
    required this.inputLabel, 
    required this.inputController, 
    required this.inputPlaceholder, 
    required this.inputOnChange,
  });

  final String inputLabel;
  final TextEditingController inputController;
  final String inputPlaceholder;
  final VoidCallback inputOnChange;

  @override
  State<InputGenerator> createState() => InputGeneratorState();
}

class InputGeneratorState extends State<InputGenerator> {

  // String inputLabel = widget.inputLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 32),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
            padding: EdgeInsets.only(bottom: 7),
            child: Text(
              widget.inputLabel,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFF666666),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: const Color.fromARGB(76, 102, 102, 102))),
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: const TextField(
              // controller: widget.inputController,
              cursorColor: Color.fromARGB(255, 82, 82, 82),
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
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 0)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 0)),
              ),
            ),
          )
        ]));
  }
}
