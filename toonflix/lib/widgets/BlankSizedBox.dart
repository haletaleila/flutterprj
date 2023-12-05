import 'package:flutter/material.dart';

class BlankSizedBox extends StatelessWidget {
  final double setheight;

  const BlankSizedBox({
    super.key,
    required this.setheight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setheight,
    );
  }
}
