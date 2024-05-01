import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/functions/save_books_data.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestSellers();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    //ليست استقبل فيها الداتا اللي راجعه من api
    List<BookEntity> books = getBooksList(data);

    //هستخدم Hive لعمل cached للداتا عند اليوزر واستخدمها كداتا local
    saveBooksData(books, kFeaturedBooks);
    return books;
  }




  @override
  Future<List<BookEntity>> fetchNewestSellers() async {
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    //ليست استقبل فيها الداتا اللي راجعه من api
    List<BookEntity> books = getBooksList(data);

    //هستخدم Hive لعمل cached للداتا عند اليوزر واستخدمها كداتا local
    saveBooksData(books, kNewestBooks);
    return books;
  }





  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));

    }
    return books;
  }
  }