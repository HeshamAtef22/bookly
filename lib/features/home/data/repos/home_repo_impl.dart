import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

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
      var booksList = homeLocalDataSource.fetchFeaturedBooks();
      if(booksList.isNotEmpty){
        return right(booksList);
      }
      //هعمل متغير احتفظ فيه بالداتا اللي هترجع من ال RemoteDataSource
      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      //في حالة ان القيمة هترجع بدون اي مشاكل فرجعلي الجزء الr الخاص بال Either غير كدا لو الداتا فيها مشكله رجعلي الجزء الl
      return right(books) ;
    }  catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestSellers() {
    // TODO: implement fetchNewestSellers
    throw UnimplementedError();
  }

}