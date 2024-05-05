import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListViewBlocBuilder extends StatelessWidget {
  const FeatureBooksListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return FeaturedBooksListView(
            books: state.books,
          );
        }else if(state is FeaturedBooksFailure){
          return Center(child: Text(state.errMessage.toString()));
        }
        return const Center(child: CircularProgressIndicator());
        
      },
    );
  }
}