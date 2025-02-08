import 'package:e_commerce/core/helper_functions/on_generate_routes.dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HebatoDiagnosis());
}

class HebatoDiagnosis extends StatelessWidget {
  const HebatoDiagnosis({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
