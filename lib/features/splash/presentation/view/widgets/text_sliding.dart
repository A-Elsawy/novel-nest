import 'package:flutter/material.dart';

class TextSliding extends StatelessWidget {
  final Animation<Offset> animation;
  final String text;
  final double? fontSize;
  const TextSliding(
      {super.key, required this.animation, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, _) => SlideTransition(
        position: animation,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
      animation: animation,
    );
  }
}
