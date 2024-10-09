import 'package:flutter/material.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/page/on_boarding_view.dart';

Future<dynamic> moveToPage({required BuildContext context}) {
  return Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, OnBoardingView.onBoardingView);
  });
}
