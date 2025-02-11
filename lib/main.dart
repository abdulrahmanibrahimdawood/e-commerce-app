import 'package:e_commerce/core/helper_functions/on_generate_routes.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:e_commerce/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(const HebatoDiagnosis());
}

class HebatoDiagnosis extends StatelessWidget {
  const HebatoDiagnosis({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
