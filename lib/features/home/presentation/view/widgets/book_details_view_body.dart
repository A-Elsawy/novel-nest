import 'package:flutter/material.dart';
import 'package:novel_nest/features/home/presentation/view/widgets/books_list.dart';
import '../../../../../core/utils/styles.dart';
import 'book_details_action.dart';
import 'book_details_info.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BookDetailsInfo(),
          SizedBox(height: 10),
          BookDetailsAction(),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'You can also like❤️',
              style: Styles.textStyle20,
            ),
          ),
          SizedBox(height: 10),
          BooksList(isEnable: false),
        ],
      ),
    );
  }
}
