import 'package:dartz/dartz.dart';
import 'package:novel_nest/core/errors/failures.dart';
import 'package:novel_nest/features/home/data/models/book_model/book_model.dart';
import 'package:novel_nest/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepository {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
