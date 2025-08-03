// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/core/services/shared_preferences_singlton.dart';
import 'package:fruits_app/features/auth/presentation/view/pages/signin_view.dart';
import 'package:fruits_app/features/home/presentation/view/pages/home_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/page/on_boarding_view.dart';

Future<dynamic> moveToPage({required BuildContext context}) {
  bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);

  return Future.delayed(const Duration(seconds: 3), () {
    if (isOnBoardingViewSeen) {
      var isLoggedIn = FirebaseAuthServices().isLoggedIn();
      if (isLoggedIn ) {
        Navigator.pushReplacementNamed(context, HomeView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, SigninView.routeName);
      }
    } else {
      Navigator.pushReplacementNamed(context, OnBoardingView.onBoardingView);
    }
  });
}
