import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  final double height;
  final String imageUrl;
  const BookCover({super.key, required this.height, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      child: AspectRatio(
        aspectRatio: 2.85 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
