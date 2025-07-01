import 'package:dio/dio.dart';

abstract class Failures {
  final String erroMassege;

  Failures(this.erroMassege);
}

class ServerFailures extends Failures {
  ServerFailures(super.erroMassege);

  factory ServerFailures.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures('Connection Time Out With Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailures('Send Time Out With Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailures('Receive Time Out With Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailures('incorrect certificate');
      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(
            dioException.response!.statusCode!, dioException.response!);
      case DioExceptionType.cancel:
        return ServerFailures('Request To Api Server was Canceled');
      case DioExceptionType.connectionError:
        return ServerFailures('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailures('Unexpected Request');

      default:
        return ServerFailures('Opps There Was An Error ,Please Try Again');
    }
  }

  factory ServerFailures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailures(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailures('Your Request Not Found , Please Try Again');
    } else if (statusCode == 500) {
      return ServerFailures('Internet Server Error , Please Try Again');
    } else {
      return ServerFailures('Opps There Was An Error ,Please Try Again');
    }
  }
}
