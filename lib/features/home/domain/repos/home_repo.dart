import 'package:bookly/features/home/domain/entities/book_entitiy.dart';

abstract class HomeRepo
{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestSellers();
}