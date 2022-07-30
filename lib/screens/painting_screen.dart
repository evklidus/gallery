import 'package:flutter/material.dart';
import 'package:garo/models/painting_entity.dart';
import 'package:garo/wigets/characteristic.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaintingScreen extends StatelessWidget {
  PaintingScreen({
    Key? key,
    required this.painting,
  }) : super(key: key);

  final PaintingEntity painting;
  final characteristicNameTextStyle = const TextStyle(
    color: Color.fromARGB(255, 199, 197, 197),
  );
  final authorTextStyle = TextStyle(
    color: Colors.blueGrey,
    fontSize: 21.sp,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              Image.network(painting.paintingUrl),
              Column(
                children: [
                  SizedBox(
                    height: 3.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 2.5.w,
                        color: Colors.red,
                        margin: EdgeInsets.only(top: 3.h),
                        height: 15.h,
                      ),
                      const Spacer(),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          painting.author,
                          style: authorTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Characteristic(text: painting.name),
                                Text('Name', style: characteristicNameTextStyle),
                                SizedBox(height: 1.5.h),
                                Characteristic(text: painting.date),
                                Text('Year', style: characteristicNameTextStyle),
                                SizedBox(height: 3.h),
                              ],
                            ),
                          ),
                          SizedBox(width: 55.w, child: Text(painting.description)),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                  // Text(painting.description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
