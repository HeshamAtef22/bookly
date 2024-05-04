import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  //التعامل في الكلين بيكون مع الuse case الخاص بكل جزء
  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturdBooks() async {
    emit(FeaturedBooksLoading());
    //هستدعي الميثود الخاصة ب call الداتا واستقبل الداتا في متغير result لانها بترجع future data
    var result = await featuredBooksUseCase.call();
    //ال result هنا بيرجع كلاس فيه اما failure واما List entity في حاجه واحده بس منهم هترجع فانا ههندل الجزء دا عن طريق result.fold
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }

}
