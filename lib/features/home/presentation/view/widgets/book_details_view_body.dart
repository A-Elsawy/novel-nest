import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/book_cover.dart';
import 'package:novel_nest/core/widgets/rating.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BookCover(
            height: 0.32,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 250,
              minWidth: 200,
            ),
            child: const AutoSizeText(
              'Harry Potter and the Goblet of Fire',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'GT Sectra Fine',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxFontSize: 28,
              minFontSize: 20,
            ),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: 0.6,
            child: Text(
              'Eiichirô Oda',
              style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 4),
          const Rating(),
          const SizedBox(height: 10),
          const BookDetailsAction(),
          const SizedBox(height: 10),
          const Text(
            'You can also like❤️',
            style: Styles.textStyle20,
          ),
        ],
      ),
    );
  }
}
