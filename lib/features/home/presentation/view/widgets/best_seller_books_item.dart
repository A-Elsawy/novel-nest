import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:novel_nest/core/utils/app_router.dart';

import 'book_cover.dart';
import 'best_seller_book_data.dart';

class BestSellerBooksItem extends StatelessWidget {
  const BestSellerBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Row(
          children: [
            BookCover(
              height: 0.2,
            ),
            SizedBox(width: 30),
            BestSellerBookData(),
          ],
        ),
      ),
    );
  }
}
