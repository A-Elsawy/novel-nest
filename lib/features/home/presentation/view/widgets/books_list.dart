import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novel_nest/core/widgets/custom_error_widget.dart';
import 'package:novel_nest/core/widgets/loading.dart';
import 'package:novel_nest/features/home/presentation/view_model/featured_books/featured_books_cubit.dart';

import 'new_book_cover_item.dart';

class BooksList extends StatelessWidget {
  final bool isEnable;
  const BooksList({super.key, required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => NewBookCoverItem(
                isEnable: isEnable,
                image: state.books[index].volumeInfo.imageLinks.thumbnail,
              ),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidegt(errMessage: state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
