import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:novel_nest/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Novel Nest', style: Styles.heading),
            IconButton(
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              onPressed: () {},
              iconSize: 24,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
