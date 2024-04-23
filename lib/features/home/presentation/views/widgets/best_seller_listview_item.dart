import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: 130,
          child: Row(
              children:  [
                AspectRatio(
                  //نسبة الطول والعرض بالنسبة للصورة
                  aspectRatio: 2.5 / 4,
                  child: Container(
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
                const SizedBox(width: 30,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.52,
                        child: Text("Harry Potter  and the Goblet of Fire",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Styles.textStyle20.copyWith(
                            fontFamily: kGtSectraFine,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3,),
                      const Text("J.K. Rowling",
                        style: Styles.textStyle14,
                      ),
                      const SizedBox(height: 3,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("19.99 €",
                              style: Styles.textStyle20.copyWith(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const BookRating(),
                          ]
                      ),


                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}


