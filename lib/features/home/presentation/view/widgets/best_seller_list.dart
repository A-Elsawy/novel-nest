import 'package:flutter/material.dart';

import 'best_seller_books_item.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const BestSellerBooksItem(),
      itemCount: 20,
    );
  }
}
