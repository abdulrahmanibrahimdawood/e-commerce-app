import 'package:e_commerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewsBody extends StatelessWidget {
  const OnBoardingViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Expanded(child: OnBoardingPageView())],
    );
  }
}
