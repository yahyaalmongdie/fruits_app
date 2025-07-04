import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_app/core/functions/on_generate_routes.dart';
import 'package:fruits_app/core/services/custom_bloc_observer.dart';
import 'package:fruits_app/core/services/get_it_service.dart';
import 'package:fruits_app/core/services/shared_preferences_singlton.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/features/splash/presentation/view/page/splash_view.dart';
import 'package:fruits_app/firebase_options.dart';
import 'package:flutter_gen/gen_l10n/s.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = CustomBlocObserver();
  await Prefs.init();
  setupGetIt();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          fontFamily: "Cairo"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.supportedLocales,
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.splashView,
    );
  }
}
