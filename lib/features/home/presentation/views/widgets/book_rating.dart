import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
    BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
        children:  [
          const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),size: 14,),
          const SizedBox(width: 6.3,),
          Text("4.8",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900),),
          const SizedBox(width: 5,),
           Opacity(
             opacity: .7,
               child: Text("(2577)",style: Styles.textStyle14,)),
        ]
    );
  }
}