import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
