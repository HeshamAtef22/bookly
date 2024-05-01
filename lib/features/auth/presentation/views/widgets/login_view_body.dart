import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_botton.dart';
import 'package:bookly/features/auth/presentation/views/widgets/custom_icon_button.dart';
import 'package:bookly/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: size.height * 0.20),
            child: Column(
              children: [
                Image.asset(AssetsData.logo),
                const SizedBox(height: 40),
                const Text(
                  "sign in to continue",
                  style: Styles.textStyle16,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(children: [
            CustomTextFormField(),
            const SizedBox(height: 20),
            CustomTextFormField(),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width,
              child: CustomButton(
                text: "Sign In",
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                fontSize: 18,
                borderRadius: BorderRadius.circular(15),
              ),
            )
          ]),
        ),
         SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                  ),
                  Text("  OR  "),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomIconButton(onPressed: () {  }, icon: FontAwesomeIcons.facebook,),
                  CustomIconButton(onPressed: () {  }, icon: FontAwesomeIcons.google,),
                  CustomIconButton(onPressed: () {  }, icon: FontAwesomeIcons.facebook,),
                ],
              ),


            ]
          ),
        ),
      ]),
    );
  }
}
