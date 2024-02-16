import 'package:flutter/material.dart';

import 'best_seller_book_cover.dart';
import 'best_seller_book_data.dart';

class BestSellerBooksItem extends StatelessWidget {
  const BestSellerBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BestSellerBookCover(),
        SizedBox(width: 30),
        BestSellerBookData(),
      ],
    );
  }
}
