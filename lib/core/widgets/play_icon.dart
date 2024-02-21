import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlayIcon extends StatelessWidget {
  final bool isEnable;
  const PlayIcon({super.key, required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isEnable ? Colors.white.withOpacity(0.3) : null,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        isEnable ? FontAwesomeIcons.play : null,
        color: Colors.white.withOpacity(0.75),
        size: 20,
      ),
    );
  }
}
