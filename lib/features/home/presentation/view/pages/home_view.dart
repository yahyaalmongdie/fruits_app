import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = "home_view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar() ,
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
