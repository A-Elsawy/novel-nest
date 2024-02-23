import 'package:flutter/material.dart';

import '../../../../../core/widgets/books_item.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const BooksItem(),
      itemCount: 20,
    );
  }
}
