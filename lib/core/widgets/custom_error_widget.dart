import 'package:flutter/material.dart';
import 'package:novel_nest/core/utils/styles.dart';

class CustomErrorWidegt extends StatelessWidget {
  final String errMessage;

  const CustomErrorWidegt({super.key, required this.errMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.textStyle18,
    );
  }
}
