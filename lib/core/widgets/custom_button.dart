import 'package:flutter/material.dart';
import 'package:novel_nest/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double bottomLeft, bottomRight, topLeft, topRight;
  final Color? color;

  const CustomButton({
    super.key,
    required this.text,
    this.bottomLeft = 0,
    this.bottomRight = 0,
    this.topLeft = 0,
    this.topRight = 0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(bottomLeft),
                bottomRight: Radius.circular(bottomRight),
                topLeft: Radius.circular(topLeft),
                topRight: Radius.circular(topRight),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
