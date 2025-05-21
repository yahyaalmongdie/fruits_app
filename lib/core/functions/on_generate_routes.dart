import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/presentation/view/pages/signin_view.dart';
import 'package:fruits_app/features/auth/presentation/view/pages/signup_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/page/on_boarding_view.dart';
import 'package:fruits_app/features/splash/presentation/view/page/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.splashView:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.onBoardingView:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
