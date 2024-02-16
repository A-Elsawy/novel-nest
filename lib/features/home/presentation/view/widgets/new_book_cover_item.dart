import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'play_icon.dart';

class NewBookCoverItem extends StatelessWidget {
  const NewBookCoverItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 2.85 / 4,
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(AssetsData.test),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const Positioned(
          right: 10,
          bottom: 10,
          child: PlayIcon(),
        ),
      ],
    );
  }
}
