import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novel_nest/core/widgets/custom_error_widget.dart';
import 'package:novel_nest/core/widgets/loading.dart';
import 'package:novel_nest/features/home/presentation/view_model/newest_books/newest_books_cubit.dart';

import '../../../../../core/widgets/books_item.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList.builder(
            itemBuilder: (context, index) =>
                BooksItem(book: state.books[index]),
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidegt(errMessage: state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
