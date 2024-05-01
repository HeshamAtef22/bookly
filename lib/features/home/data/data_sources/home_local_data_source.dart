import 'package:bookly/constants.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  //نوع الدتا هنا هيرجع ليست لانها هتكون داا في الكاش الخاص باليورزر مش داتا future هيتم عمل fetch لها من apiservice
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestSellers();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {

    var box = Hive.box<BookEntity>(kFeaturedBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestSellers() {
    var box = Hive.box<BookEntity>(kNewestBooks);
    return box.values.toList();
  }
}