import 'package:flutter/material.dart';
import 'package:novel_nest/core/utils/styles.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Best Seller',
            style: Styles.title,
          ),
        ],
      ),
    );
  }
}
