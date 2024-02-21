import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_bag_rounded),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
