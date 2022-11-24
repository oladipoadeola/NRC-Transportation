import 'package:flutter/material.dart';

class SpaceHelper extends StatelessWidget {
  @override
  double height;
  double? width;
  SpaceHelper({required this.height, this.width});
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20.0,
    );
  }
}
