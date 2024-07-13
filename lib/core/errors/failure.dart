import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioExeption(DioException dioExeption) {
    switch (dioExeption.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection Timeout with services api");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with services api");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive Timeout with services api");
      case DioExceptionType.badCertificate:
        return ServerFailure("bad certificate with services api");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioExeption.response!.statusCode!, dioExeption.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("cancel with services api");
      case DioExceptionType.connectionError:
        return ServerFailure("connection Error  with services api");
      case DioExceptionType.unknown:
       if(dioExeption.message!.contains('SocketExption')){
         return ServerFailure("No Internet Connection");
       }
         return ServerFailure("unknown  services api");
       default:
        return ServerFailure("Opps, There was an Error,Please try again later");
    }
  }

  factory ServerFailure.fromResponse(int codeState, dynamic response) {
    if (codeState == 400 || codeState == 403 || codeState == 401) {
      return ServerFailure(response['error']['message']);
    } else if (codeState == 404) {
      return ServerFailure("Your request not Found ,plz try again later !");
    } else if (codeState == 500) {
      return ServerFailure("Internal Server error ,plz try again later !");
    } else {
      return ServerFailure("Opps, There was an Error,Please try again later");
    }
  }
}
