import 'dart:developer';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
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
  bool excursionStarted = false;
  bool speakingStarted = false;
  late final FlutterTts flutterTts;
  startExcursion(String text, [bool isLast = false]) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
    flutterTts.setCompletionHandler(() async {
      if (!isLast) {
        await _pageController.nextPage(duration: const Duration(microseconds: 500), curve: Curves.easeIn);
      }
    });
    if (isLast) {
      excursionStarted = false;
    }
  }

  @override
  void initState() {
    flutterTts = FlutterTts();
    super.initState();
  }

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
            if (excursionStarted) {
              final painting = data.paintingList[index];
              final textForSpeak = painting.author + painting.name + painting.date + painting.description;
              startExcursion(textForSpeak, index == (data.paintingList.length - 1));
            }
          }),
          itemBuilder: (context, index) {
            final painting = data.paintingList[index];
            final textForSpeak = painting.author + painting.name + painting.date + painting.description;
            return GestureDetector(
              onTap: () {
                if (index == pageIndex) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaintingScreen(
                        painting: painting,
                      ),
                    ),
                  );
                }
              },
              onLongPress: () async {
                if (excursionStarted) {
                  excursionStarted = false;
                  await flutterTts.pause();
                } else {
                  excursionStarted = true;
                  await startExcursion(textForSpeak, data.paintingList[index] == data.paintingList.last);
                }
              },
              onDoubleTap: () async {
                if (speakingStarted) {
                  speakingStarted = false;
                  await flutterTts.pause();
                } else {
                  speakingStarted = true;
                  await flutterTts.speak(textForSpeak);
                }
              },
              child: Stack(
                children: [
                  if (index == pageIndex) Blur(child: Container()),
                  Blur(
                    blur: index == pageIndex ? 0 : 5,
                    colorOpacity: index == pageIndex ? 0 : 0.5,
                    child: Transform.scale(
                      scale: index == pageIndex ? 1.25 : 1,
                      child: Painting(painting: painting),
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
