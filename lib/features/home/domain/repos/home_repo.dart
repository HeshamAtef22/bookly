import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //بدل من استخدام ال Try-catch لهندلة الايرور هنستخدم Either الموجوده في باكيدج dartz
  //واللي مهمتها انها ترجعلي حالتين للداتا في حالة كانت ترو وبدون مشكله R
  //وفي حالة كانت فولس وبها مشكلة L
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestSellers();
}
