import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/data/models/book_model/book_model.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/rating.dart';

class BestSellerBookData extends StatelessWidget {
  final BookModel book;
  const BestSellerBookData({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20.copyWith(
              fontFamily: 'GT Sectra Fine',
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 3),
        const Text('Eiichirô Oda', style: Styles.textStyle14),
        const SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '19.99\$',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 12),
            const Rating(),
          ],
        ),
      ],
    );
  }
}
