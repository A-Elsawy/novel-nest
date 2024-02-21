import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/book_cover.dart';
import '../../../../../core/widgets/play_icon.dart';

class NewBookCoverItem extends StatelessWidget {
  const NewBookCoverItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 4.5),
      child: Stack(
        children: [
          BookCover(
            height: 0.27,
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: PlayIcon(),
          ),
        ],
      ),
    );
  }
}
