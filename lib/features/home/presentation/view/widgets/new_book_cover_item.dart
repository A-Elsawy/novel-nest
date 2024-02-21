import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/book_cover.dart';
import '../../../../../core/widgets/play_icon.dart';

class NewBookCoverItem extends StatelessWidget {
  final bool isEnable;
  const NewBookCoverItem({super.key, required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.5),
      child: Stack(
        children: [
          const BookCover(
            height: 0.27,
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
