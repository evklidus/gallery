import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:garo/wigets/painting.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: MyHomePage(),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController(viewportFraction: 0.5);

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: 100.w,
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          itemCount: 5,
          onPageChanged: (index) => setState(() {
            pageIndex = index;
          }),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                if (index == pageIndex) Blur(child: Container()),
                Blur(
                  blur: index == pageIndex ? 0 : 5,
                  colorOpacity: index == pageIndex ? 0 : 0.5,
                  child: Transform.scale(
                    scale: index == pageIndex ? 1.25 : 1,
                    child: const Painting(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
