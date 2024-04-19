import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection:  Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: FeaturedListViewItem(),
        );
      }),
    );
  }
}






