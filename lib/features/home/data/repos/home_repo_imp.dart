import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:novel_nest/core/errors/failures.dart';
import 'package:novel_nest/features/home/data/models/book_model/book_model.dart';
import 'package:novel_nest/features/home/data/repos/home_repo.dart';
import '../../../../core/utils/api_service.dart';

class HomeRepoImplementation implements HomeRepository {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.getApiData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
