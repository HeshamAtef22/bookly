import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

//HemoRepoImpl مهمته انه يجمع او يعمل فيتش للداتامن ال اي بي اي او من الكاش لو الداتا موجوده في الكاش
class HemoRepoImpl extends HomeRepo{

  //هعمل اوبجيكت من ال HomeRemoteDataSource و HomeLocalDataSource
  //علشان اقدر اعمل اكسس عليهم
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HemoRepoImpl({required this.homeRemoteDataSource,required this.homeLocalDataSource});


  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async{

    try {
      //في الاول هخليه يتأكد لو في داتا في الكاش يستخدمها ولو الكاش فاضي فهيعمل fetch للداتا من ال api
      List<BookEntity> booksList = homeLocalDataSource.fetchFeaturedBooks();
      if(booksList.isNotEmpty){
        return right(booksList);
      }
      //هعمل متغير احتفظ فيه بالداتا اللي هترجع من ال RemoteDataSource
      List<BookEntity> books = await homeRemoteDataSource.fetchFeaturedBooks();
      //في حالة ان القيمة هترجع بدون اي مشاكل فرجعلي الجزء الr الخاص بال Either غير كدا لو الداتا فيها مشكله رجعلي الجزء الl
      return right(books) ;
    }  catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }

    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestSellers() async{
    try {
      //في الاول هخليه يتأكد لو في داتا في الكاش يستخدمها ولو الكاش فاضي فهيعمل fetch للداتا من ال api
      List<BookEntity> booksList = homeLocalDataSource.fetchNewestSellers();
      if(booksList.isNotEmpty){
        return right(booksList);
      }
      //هعمل متغير احتفظ فيه بالداتا اللي هترجع من ال RemoteDataSource
      List<BookEntity> books = await homeRemoteDataSource.fetchNewestSellers();
      //في حالة ان القيمة هترجع بدون اي مشاكل فرجعلي الجزء الr الخاص بال Either غير كدا لو الداتا فيها مشكله رجعلي الجزء الl
      return right(books) ;
    }  catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

}