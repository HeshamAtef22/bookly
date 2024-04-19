import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      //نسبة الطول والعرض بالنسبة للصورة
      aspectRatio: 3 / 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage(AssetsData.test_book1),
                fit: BoxFit.fill
            )
        ),
      ),
    );
  }
}