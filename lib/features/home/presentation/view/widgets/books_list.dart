import 'package:flutter/material.dart';

import 'new_book_cover_item.dart';

class BooksList extends StatelessWidget {
  final bool isEnable;
  const BooksList({super.key, required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => NewBookCoverItem(isEnable: isEnable),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
