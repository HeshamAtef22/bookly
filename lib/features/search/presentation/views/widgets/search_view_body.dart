import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_listview_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearhViewBody extends StatelessWidget {
  const SearhViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(height: 24),
          Text("Search Result",style: Styles.textStyle18,),
          const SizedBox(height: 24),
          Expanded(child: SearchResultListView()),
        ]
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //physics:  const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder:  (context,index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BookListViewItem(),
      ),
      itemCount: 10,
    );
  }
}




