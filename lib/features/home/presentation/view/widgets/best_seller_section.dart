import 'package:flutter/material.dart';
import 'package:novel_nest/core/utils/styles.dart';
import 'best_seller_list.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            SizedBox(height: 30),
            BestSellerBooksList(),
          ],
        ),
      ),
    );
  }
}
