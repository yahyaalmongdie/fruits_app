import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/widgets/search_text_filed.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/custom_home_app_bar.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: FeaturedList(),
        )
      ],
    );
  }
}
