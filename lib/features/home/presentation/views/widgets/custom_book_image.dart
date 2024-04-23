import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      //نسبة الطول والعرض بالنسبة للصورة
      aspectRatio: 3 / 5,
      child: Container(
        margin:  const EdgeInsets.only(right: 10),
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