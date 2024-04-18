import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class SpalshViewBody extends StatelessWidget {
  const SpalshViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:  CrossAxisAlignment.stretch,
      children: [
        const Spacer(
          flex: 2,
        ),
        Image.asset(AssetsData.logo).animate().slideY(begin: -1.2,end: 0,
            duration: Duration(milliseconds: 600)),
        const Text("Read Free Books",
          textAlign:  TextAlign.center,
        ).animate().fadeIn(duration: Duration(milliseconds: 1700)),
        const Spacer(),
        SizedBox(
          child: Lottie.asset(AnimationsData.bookAnimation,
            width: 180,
            height: 180,
            animate: true,
          ),
        ).animate().fadeIn(duration: Duration(milliseconds: 1200)),
      ],
    );
  }
}
