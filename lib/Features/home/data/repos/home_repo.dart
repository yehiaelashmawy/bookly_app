import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BooksModel>>> fetchNewtsBooks();
  Future<Either<Failures, List<BooksModel>>> fetchFeturedBooks();
}
