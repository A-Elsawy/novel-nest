import 'package:flutter/material.dart';
import 'best_seller.dart';
import 'custom_app_bar.dart';
import 'new_book_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 10),
        NewBooksList(),
        SizedBox(height: 30),
        BestSeller(),
      ],
    );
  }
}
