import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/widgets/search_text_filed.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              SizedBox(
                height: kTopPadding,
              ),
              CustomHomeAppBar(),
              SizedBox(
                height: kTopPadding,
              ),
              SearchTextField(),
            ],
          ))
        ],
      ),
    );
  }
}
