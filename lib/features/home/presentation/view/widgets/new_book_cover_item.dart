import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/book_cover.dart';
import '../../../../../core/widgets/play_icon.dart';

class NewBookCoverItem extends StatelessWidget {
  final bool isEnable;
  final String image;
  const NewBookCoverItem(
      {super.key, required this.isEnable, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.5, bottom: 10.0),
      child: Stack(
        children: [
          BookCover(
            height: 0.27,
            imageUrl: image,
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: PlayIcon(isEnable: isEnable),
          ),
        ],
      ),
    );
  }
}
