import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class ImageSliding extends StatelessWidget {
  const ImageSliding({
    super.key,
    required this.imageAnimation,
  });

  final Animation<Offset> imageAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: imageAnimation,
      builder: (BuildContext context, _) => SlideTransition(
        position: imageAnimation,
        child: Image.asset(AssetsData.logo),
      ),
    );
  }
}
