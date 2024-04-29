import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class fetchFeaturedBooksUseCase
{
  //ال use case هي اللي بهندل طريقة التنفيذ او الاكشن اللي بيقوم بيه اليوزر وبيكون ليها اكسس علي الريبو
  //لانها بتتعامل مع الريبو فهاخد اوبجيكت من الريبو كلاس داخل ال use case
  final HomeRepo homeRepo;

  fetchFeaturedBooksUseCase(this.homeRepo);

  //كدا اليوز كيس اصبح بيحتوي علي الhome repo
//بعد كدا هعمل ميثود تعمل فيش او تنفذ الاكشن اللي محتاجه
  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks()
  {
    //هنا بعمل ريترن بيرجع نفس المثود اللي موجوده في الhome repo لكن هنا النقطه المهمه اننا هنقدر نتحكم في اي اكشن يحصل قبلها
    //مثلا زي  - check permssion or anther use case
    return homeRepo.fetchFeaturedBooks();
  }
}

//لو مفيش اي حاجه لاستخدام الuse case ممكن نستغني عنها والافضل تعملها لو ممكن يكون في تعديل علي نفس الجزء في المستقبل
//من اهم ميزاتها انها بتطبق اول مبدأ من مبادئ الsolid
//وهو Single-responsibility Principle الميثود او الكلاس يقوم بمهمة واحدة فقط