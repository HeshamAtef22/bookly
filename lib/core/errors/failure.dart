//عن طريق الكلاس دا هبدأ اهندل اليرور اللي بيرجع لو كان مثلا مشكله في الانترنت او السيرفر او غيرها
//وممكن اظهر لليوزر في كل نوع ايرور رسالة او اكشن معين
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

//كلاس للتعامل مع مشاكل السيرفر
class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioError error){
    switch (error.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure('Opps There was an error. Please try again');
      case DioExceptionType.badResponse:
      // TODO: Handle this case.
    }
  }
  
}


//كلاس للتعامل مع مشاكل الكاش
//class CacheFailure extends Failure {}
