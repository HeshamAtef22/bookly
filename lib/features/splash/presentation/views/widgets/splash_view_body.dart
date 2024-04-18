import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody> {

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      //transition تستخدم لعمل انيميشن للانتقال من صفحة لصفحة عن طريق الجيت
      Get.to(()=> const HomeView(), transition: Transition.fadeIn,duration: kTransitionDuration);
    });
  }
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
