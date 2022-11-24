import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  @override
  VoidCallback onPressed;
  NormalButton({required this.onPressed});
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text(
        'Skip',
        style: TextStyle(
          color: Color(0xFF007D53),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 18),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ))),
    );
  }
}
