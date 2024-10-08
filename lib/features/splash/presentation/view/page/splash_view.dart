import 'package:flutter/material.dart';
import 'package:fruits_app/core/functions/move_to_page.dart';
import 'package:fruits_app/features/splash/presentation/view/widget/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const String splashView = "splashView";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    moveToPage(context: context);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
