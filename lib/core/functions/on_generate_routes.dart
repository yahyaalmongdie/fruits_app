import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/presentation/view/pages/login_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/page/on_boarding_view.dart';
import 'package:fruits_app/features/splash/presentation/view/page/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.splashView:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.onBoardingView:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
