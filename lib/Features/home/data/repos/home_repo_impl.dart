import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BooksModel>>> fetchNewtsBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              ' volumes?Filtering=free-ebooks& q=subject:programming& Sorting=newest ');
      List<BooksModel> books = [];
      for (var item in data['item']) {
        books.add(BooksModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailures.fromDioException(e),
        );
      }
      return left(
        ServerFailures(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failures, List<BooksModel>>> fetchFeturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: ' volumes?Filtering=free-ebooks& q=subject:programming');
      List<BooksModel> books = [];
      for (var item in data['item']) {
        books.add(BooksModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailures.fromDioException(e),
        );
      }
      return left(
        ServerFailures(e.toString()),
      );
    }
  }
}
