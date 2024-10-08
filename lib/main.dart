import 'package:flutter/material.dart';
import 'package:fruits_app/core/functions/on_generate_routes.dart';
import 'package:fruits_app/features/splash/presentation/view/page/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.splashView,
    );
  }
}
