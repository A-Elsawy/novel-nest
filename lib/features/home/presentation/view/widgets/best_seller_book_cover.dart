import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerBookCover extends StatelessWidget {
  const BestSellerBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
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
