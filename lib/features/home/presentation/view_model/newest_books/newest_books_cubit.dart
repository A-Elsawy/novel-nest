import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:novel_nest/features/home/data/repos/home_repo.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepository homeRepository;

  NewestBooksCubit(this.homeRepository) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepository.fetchNewsetBooks();

    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errorMessage)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
