import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: khorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormFeild(
              textInputType: TextInputType.emailAddress,
              hintText: 'Email',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormFeild(
              icon: Icon(Icons.remove_red_eye_outlined),
              textInputType: TextInputType.visiblePassword,
              hintText: 'Password',
            )
          ],
        ),
      ),
    );
  }
}
