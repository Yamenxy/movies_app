/*import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_theme.dart';
import 'package:movies_app/features/splash/view/onboarding_screen2.dart';
import 'package:movies_app/features/splash/view/onboarding_screen3.dart';
import 'package:movies_app/features/splash/view/splash_screen.dart';

import 'features/splash/view/onboarding_screen.dart';

void main() {
  runApp(MoviesApp());

}
class MoviesApp extends StatelessWidget{
  const MoviesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen3(),
      },
      debugShowCheckedModeBanner: false,
      //لاخفاء الشريط الأحمر
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
//home: const SplashScreen(),

    );

  }
  
}*/
//======================================
import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_theme.dart';
import 'package:movies_app/features/splash/view/splash_screen.dart';
//import 'package:movies_app/features/onboarding/onboarding_page.dart';
//import 'package:movies_app/features/login/login.dart';

import 'features/splash/view/onboardingPage.dart'; // الصفحة بعد Finish

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',

      // الصفحة الأولى عند تشغيل التطبيق
      initialRoute: '/',

      // تعريف كل الـ routes
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingPage(),
        //'/login': (context) => const LoginPage(),
      },

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }}



