import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Characteristic extends StatelessWidget {
  const Characteristic({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final characteristicTextStyle = TextStyle(
      color: const Color.fromARGB(255, 86, 85, 85),
      fontSize: 21.sp,
    );

    return SizedBox(
      width: 50.w,
      child: Text(
        text,
        style: characteristicTextStyle,
      ),
    );
  }
}
