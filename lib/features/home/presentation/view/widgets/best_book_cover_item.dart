import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'play_icon.dart';

class BestBookCoverItem extends StatelessWidget {
  const BestBookCoverItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: AspectRatio(
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
        ),
        const Positioned(
          right: 5,
          bottom: 5,
          child: PlayIcon(),
        ),
      ],
    );
  }
}
