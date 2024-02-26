import 'package:dartz/dartz.dart';
import 'package:novel_nest/core/errors/failures.dart';
import 'package:novel_nest/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
