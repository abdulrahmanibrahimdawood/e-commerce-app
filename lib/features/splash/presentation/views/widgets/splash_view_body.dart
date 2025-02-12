import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Assets.assetsImagesSplash),
    );
  }

  void excuteNavigation() {
    bool isOnboardingViewSeen = SharedPrefs.getBool(kIsOnboardingViewSeen);
    Future.delayed(
      const Duration(seconds: 1),
      () {
        //================================= ازاله الورنينج =======================================
        if (!mounted) return; // تحقق أن الودجت ما زال في الشجرة
        //====================================================================================
        if (isOnboardingViewSeen) {
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      },
    );
  }
}
