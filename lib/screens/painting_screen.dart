import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:garo/models/painting_entity.dart';

class PaintingScreen extends StatelessWidget {
  const PaintingScreen({
    Key? key,
    required this.painting,
  }) : super(key: key);

  final PaintingEntity painting;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(painting.paintingUrl),
          Text(painting.description),
        ],
      ),
    );
  }
}
