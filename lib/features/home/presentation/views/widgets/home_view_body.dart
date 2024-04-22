import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 24),
          child: FeaturedBooksListView(),
        ),
       SizedBox(height: 40,),
        Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text("Best Seller",style: Styles.textStyle18,),
        ),
        SizedBox(height: 20,),
        BestSellerListViewItem(),
      ],
    );
  }
}











