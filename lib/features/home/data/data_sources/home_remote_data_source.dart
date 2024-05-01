import 'package:bookly/features/home/domain/entities/book_entitiy.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestSellers();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestSellers() {

    throw UnimplementedError();
  }
  }