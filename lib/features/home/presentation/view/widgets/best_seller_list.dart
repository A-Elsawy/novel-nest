import 'package:flutter/material.dart';

import 'best_seller_books_item.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) => const BestSellerBooksItem(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 10,
      ),
    );
  }
}
