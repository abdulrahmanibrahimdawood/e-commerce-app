import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewsBody extends StatefulWidget {
  const OnBoardingViewsBody({super.key});

  @override
  State<OnBoardingViewsBody> createState() => _OnBoardingViewsBodyState();
}

class _OnBoardingViewsBodyState extends State<OnBoardingViewsBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPage = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 3,
          decorator: DotsDecorator(
            activeColor: kPrimaryColor,
            color: currentPage == 1 || currentPage == 2
                ? kPrimaryColor
                : kPrimaryColor.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentPage == 2 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: khorizontalPadding,
            ),
            child: CustomButton(onPressed: () {}, text: 'Start Now'),
          ),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
