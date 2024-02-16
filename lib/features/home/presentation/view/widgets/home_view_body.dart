import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'new_book_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 10),
          NewBooksList(),
        ],
      ),
    );
  }
}
