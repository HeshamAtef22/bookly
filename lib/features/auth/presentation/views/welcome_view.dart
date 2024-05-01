import 'package:bookly/features/auth/presentation/views/widgets/wlcome_view_body.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: WelComeViewBody()),
    );
  }
}
