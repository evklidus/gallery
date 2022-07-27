import 'package:flutter/material.dart';
import 'package:garo/models/painting_entity.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Painting extends StatelessWidget {
  const Painting({
    Key? key,
    required this.painting,
  }) : super(key: key);

  final PaintingEntity painting;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 10.h),
          child: Image.network(
            painting.paintingUrl,
            width: 70.w,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 2.5.h,
        ),
        Text(
          painting.author,
          style: TextStyle(fontSize: 16.sp, color: Colors.blueGrey),
        ),
      ],
    );
  }
}
