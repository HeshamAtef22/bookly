import 'package:bookly/features/home/domain/entities/book_entitiy.dart';

abstract class HomeLocalDataSource {
  //نوع الدتا هنا هيرجع ليست لانها هتكون داا في الكاش الخاص باليورزر مش داتا future هيتم عمل fetch لها من apiservice
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestSellers();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {

    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestSellers() {
    throw UnimplementedError();
  }
}