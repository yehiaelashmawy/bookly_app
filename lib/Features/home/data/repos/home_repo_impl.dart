import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BooksModel>>> fetchBestSellarBooks() {
    // TODO: implement fetchBestSellarBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BooksModel>>> fetchFeturedBooks() {
    // TODO: implement fetchFeturedBooks
    throw UnimplementedError();
  }
}
