import 'package:flutter/material.dart';
import 'package:utmstore/features/authentication/screens/OnBoarding/onboarding.dart';
import 'package:utmstore/utils/theme/theme.dart';
import 'package:get/get.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: UtmApptheme.lightTheme,
      darkTheme: UtmApptheme.darkTheme,
      home: OnBoardingScreen(),

    );
  }
}