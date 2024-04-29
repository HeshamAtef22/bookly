import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/use_case.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class fetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,void>
{
  //1-
  //ال use case هي اللي بهندل طريقة التنفيذ او الاكشن اللي بيقوم بيه اليوزر وبيكون ليها اكسس علي الريبو
  //لانها بتتعامل مع الريبو فهاخد اوبجيكت من الريبو كلاس داخل ال use case
  final HomeRepo homeRepo;

  fetchFeaturedBooksUseCase(this.homeRepo);


  //7-
  //هنا لما ورثة من الكلاس use case  استخدمت الميثود call اللي فيه ومررت نوع الداتا اللي راجعاله عن طريق
  //الgeneric الخاص بالكلاس
  @override
  Future<Either<Failure, List<BookEntity>>> call([void parm]) async {
    // TODO: implement call
    return await homeRepo.fetchFeaturedBooks();
  }

  /*//2-
  //كدا اليوز كيس اصبح بيحتوي علي الhome repo
//بعد كدا هعمل ميثود تعمل فيتش او تنفذ الاكشن اللي محتاجه
  Future<Either<Failure,List<BookEntity>>> call()
  {
    //3-
    //هنا بعمل ريترن بيرجع نفس المثود اللي موجوده في الhome repo لكن هنا النقطه المهمه اننا هنقدر نتحكم في اي اكشن يحصل قبلها
    //مثلا زي  - check permssion or anther use case
    return homeRepo.fetchFeaturedBooks();
  }*/
}
//4-
//لو مفيش اي حاجه لاستخدام الuse case ممكن نستغني عنها والافضل تعملها لو ممكن يكون في تعديل علي نفس الجزء في المستقبل
//من اهم ميزاتها انها بتطبق اول مبدأ من مبادئ الsolid
//وهو Single-responsibility Principle الميثود او الكلاس يقوم بمهمة واحدة فقط

//5-
//الكلاس الخاص بالuse case دايما بيكون فيه ميثود call بترجعلي بالاكشن اللي هيحصل
//فعلشان اخلي الكود افضل ويكون بشكل غير قابل للتغير هنستخدم ال oop اننا نعمل abstract class
//ونورثه للكلاس فنجبره يتسخدم ال Call method

//طبعا الكلاس كدا بقه عام علي التطبيق كله فهنقله في فولدر ال core
/*
abstract class UseCase<type , Parmeter>
//6-
//هحدد نوع الداتا اللي داخله للكلاس علشان استخدمها في الميثود من اي مكان حتي لو اتغيرت نوع الداتا
//وبدخل داتا للكلاس في الحالة دي عن طريق الgeneric وهي اني بحدد نوع الداتا بجوار اسم الكلاس زي اي اوبجيكت بانشأه وبحددله نوع الداتا
//فهعمل جينيرك اسمه type استقبل فيه نوع الداتا اللي هيتعامل معاها الميثود
//ولو الميثود بياخد جواه براميتر برده بحدده مع الكلاس
{
  Future<Either<Failure,type>> call([Parmeter parm]);
  //تقدر تخلي الباراميتر اوبشنال علشان لو مشحتاج استخدمه وقت ما فميكونش اجباري
}*/
