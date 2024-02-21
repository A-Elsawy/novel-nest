import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:novel_nest/core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(width: 6),
        Text(
          '4.9',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Text(
          '(99999)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
