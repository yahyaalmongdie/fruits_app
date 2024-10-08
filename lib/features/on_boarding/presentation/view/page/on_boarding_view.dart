import 'package:flutter/material.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const onBoardingView = '/onBoardingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
