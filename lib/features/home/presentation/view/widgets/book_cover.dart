import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookCover extends StatelessWidget {
  final double height;
  const BookCover({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      child: AspectRatio(
        aspectRatio: 2.85 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AssetsData.test),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
