import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key});

  //متغيرات لحفظ الداتا وعمل كونترول عليها داخل التيكست فيلد
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
            labelText: "Your Email",
            prefixIcon: const Icon(Icons.email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )
        ),
        controller: emailController,
      ),
    );
  }
}
