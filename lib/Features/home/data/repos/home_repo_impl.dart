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
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science ');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BooksModel.fromJson(item));
        } catch (e) {
          books.add(BooksModel.fromJson(item));
        }
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
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BooksModel> books = [];
      for (var item in data['items']) {
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
  Future<Either<Failures, List<BooksModel>>> fetchSimaillarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=relevance ');
      List<BooksModel> books = [];
      for (var item in data['items']) {
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

// import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
// import 'package:bookly/Features/home/data/repos/home_repo.dart';
// import 'package:bookly/core/utils/api_service.dart';
// import 'package:dartz/dartz.dart';
// import 'package:bookly/core/errors/failures.dart';
// import 'package:dio/dio.dart';

// class HomeRepoImpl implements HomeRepo {
//   final ApiService apiService;

//   HomeRepoImpl(this.apiService);
//   @override
//   Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
//     try {
//       var data = await apiService.get(
//           endPoint:
//               'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         try {
//           books.add(BookModel.fromJson(item));
//         } catch (e) {
//           books.add(BookModel.fromJson(item));
//         }
//       }

//       return right(books);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }

//   @override
//   Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
//     try {
//       var data = await apiService.get(
//           endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         books.add(BookModel.fromJson(item));
//       }

//       return right(books);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }

//   @override
//   Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
//       {required String category}) async {
//     try {
//       var data = await apiService.get(
//           endPoint:
//               'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         books.add(BookModel.fromJson(item));
//       }

//       return right(books);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }
// }
