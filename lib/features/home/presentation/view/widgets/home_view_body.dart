import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/best_book_cover_item.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 10),
        BestBookCoverItem(),
      ],
    );
  }
}
