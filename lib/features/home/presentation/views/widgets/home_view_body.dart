import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

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
          child: Text("Best Seller",style: Styles.titleMedium,),
        ),
        SizedBox(height: 16,),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: 130,
        child: Row(
          children:  [
            AspectRatio(
              //نسبة الطول والعرض بالنسبة للصورة
              aspectRatio: 3.5 / 5,
              child: Container(
                margin:  const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.test_book1),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
            Column(
              children: [

              ],
            ),
          ]
        ),
      ),
    );
  }
}









