import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/terms_and_condations.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: khorizontalPadding),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormFeild(
            icon: Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            textInputType: TextInputType.name,
            hintText: 'Name',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormFeild(
            icon: Icon(
              Icons.email,
              color: Colors.blueGrey,
            ),
            textInputType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormFeild(
            suffixIcon: Icon(Icons.remove_red_eye, color: Colors.blueGrey),
            icon: Icon(Icons.lock, color: Colors.blueGrey),
            textInputType: TextInputType.visiblePassword,
            hintText: 'Password',
          ),
          SizedBox(
            height: 16,
          ),
          TermsAndCondationsWidgets()
        ],
      ),
    ));
  }
}
