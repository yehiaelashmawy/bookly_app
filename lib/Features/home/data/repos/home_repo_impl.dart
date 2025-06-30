import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

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
      return left(ServerFailures());
    }
  }

  @override
  Future<Either<Failures, List<BooksModel>>> fetchFeturedBooks() {
    throw UnimplementedError();
  }
}
