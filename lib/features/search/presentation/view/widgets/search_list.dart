import 'package:flutter/material.dart';

import '../../../../../core/widgets/books_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        //itemBuilder: (context, index) => const BooksItem(),
        itemBuilder: (context, index) => Container(),
        itemCount: 30,
      ),
    );
  }
}
