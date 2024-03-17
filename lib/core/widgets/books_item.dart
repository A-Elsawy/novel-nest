import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:novel_nest/core/utils/app_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/presentation/view/widgets/best_seller_book_data.dart';
import '../../features/home/presentation/view/widgets/book_cover.dart';

class BooksItem extends StatelessWidget {
  final BookModel book;
  const BooksItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Row(
          children: [
            BookCover(
              height: 0.12,
              imageUrl: book.volumeInfo.imageLinks.thumbnail,
            ),
            const SizedBox(width: 30),
            BestSellerBookData(book: book),
          ],
        ),
      ),
    );
  }
}
