import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:garo/data.dart';
import 'package:garo/screens/painting_screen.dart';
import 'package:garo/wigets/painting.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.5);

  int pageIndex = 0;
  final Data data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: 100.w,
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          itemCount: data.paintingList.length,
          onPageChanged: (index) => setState(() {
            pageIndex = index;
          }),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaintingScreen(
                      painting: data.paintingList[index],
                    ),
                  ),
                );
              },
              child: Stack(
                children: [
                  if (index == pageIndex) Blur(child: Container()),
                  Blur(
                    blur: index == pageIndex ? 0 : 5,
                    colorOpacity: index == pageIndex ? 0 : 0.5,
                    child: Transform.scale(
                      scale: index == pageIndex ? 1.25 : 1,
                      child: Painting(painting: data.paintingList[index]),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
