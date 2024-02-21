import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookDetailsAction extends StatelessWidget {
  const BookDetailsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: '19.99 \$',
            color: Colors.black,
            topLeft: 12,
            bottomLeft: 12,
          ),
          CustomButton(
            text: 'Preview',
            color: Colors.amber,
            topRight: 12,
            bottomRight: 12,
          ),
        ],
      ),
    );
  }
}
