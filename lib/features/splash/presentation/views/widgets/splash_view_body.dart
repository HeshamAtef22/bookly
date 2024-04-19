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


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:  CrossAxisAlignment.stretch,
      children: [
        const Spacer(
          flex: 2,
        ),
        Image.asset(AssetsData.logo).animate().fadeIn(duration: 600.ms)
            .then(delay: 100.ms) // baseline=800ms
            .slideY(begin: .50,end: 0,).shimmer(color: kPrimaryColor, duration: const Duration(milliseconds: 1200)),
        const Text("Read Free Books",
          textAlign:  TextAlign.center,
        ).animate().then(delay: 700.ms).fadeIn(duration: const Duration(milliseconds: 1200)),
        const Spacer(),
        SizedBox(
          child: Lottie.asset(AnimationsData.bookAnimation,
            width: 180,
            height: 180,
            animate: true,
          ),
        ).animate().scale(delay: 500.ms).fadeIn(duration: const Duration(milliseconds: 1000)),
      ],
    );
  }
  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      //transition تستخدم لعمل انيميشن للانتقال من صفحة لصفحة عن طريق الجيت
      Get.to(()=> const HomeView(), transition: Transition.fadeIn,duration: kTransitionDuration);
    });
  }
}
