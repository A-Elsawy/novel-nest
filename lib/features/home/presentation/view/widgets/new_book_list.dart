import 'package:flutter/material.dart';

import 'new_book_cover_item.dart';

class NewBooksList extends StatelessWidget {
  const NewBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const NewBookCoverItem(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
