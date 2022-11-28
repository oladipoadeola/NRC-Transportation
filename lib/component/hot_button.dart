import 'package:flutter/material.dart';

class HotButton extends StatelessWidget {
  @override
  VoidCallback onPressed;
  String buttonText;
  double buttonHeight;
  HotButton(
      {required this.onPressed,
      required this.buttonText,
      required this.buttonHeight});
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFF007D53)),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 18),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ))),
      ),
    );
  }
}
//0xFF007D53
