import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
      child: Row(
        children:  [
          Image.asset(AssetsData.logo, height: 18,),
          const Spacer(),
          IconButton(onPressed:  () {}, icon: Icon(FontAwesomeIcons.magnifyingGlass,size: 24,),),
        ],
      ),
    );
  }
}