import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Painting extends StatelessWidget {
  const Painting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 10.h),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/970px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
            width: 70.w,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 2.5.h,
        ),
        Text(
          'Vincent van Gogh',
          style: TextStyle(fontSize: 16.sp, color: Colors.blueGrey),
        ),
      ],
    );
  }
}
