import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/book_cover.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/rating.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const BookCover(
            height: 0.35,
          ),
          Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20.copyWith(
              fontFamily: 'GT Sectra Fine',
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 3),
          const Text('Eiichirô Oda', style: Styles.textStyle14),
          const Rating(),
        ],
      ),
    );
  }
}
