import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [SliverToBoxAdapter(child: CustomHomeAppBar())],
    );
  }
}
