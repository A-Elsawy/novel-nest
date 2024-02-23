import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/rating.dart';
import 'book_cover.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookCover(
          height: 0.30,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 250,
            minWidth: 200,
          ),
          child: const AutoSizeText(
            'Harry Potter and the Goblet of Fire',
            style: TextStyle(
              fontSize: 21,
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
            style: Styles.textStyle14.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 4),
        const Rating(),
      ],
    );
  }
}
