import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/generated/l10n.dart';

import 'on_boarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        OnBoardingPageViewItem(
            showSkipWidget: (pageController.hasClients
                    ? pageController.page!.round()
                    : 0) ==
                0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).on_boarding_title1),
                Text(S.of(context).fruit),
                Text(S.of(context).HUB),
              ],
            ),
            body: S.of(context).on_boarding_body1,
            image: Assets.imagesPageViewItem1Image,
            backGroundImage: Assets.imagesPageViewItem1BackgroundImage),
        OnBoardingPageViewItem(
            showSkipWidget: (pageController.hasClients
                    ? pageController.page!.round()
                    : 0) !=
                0,
            title: Text(S.of(context).on_boarding_title2),
            body: S.of(context).on_boarding_body2,
            image: Assets.imagesPageViewItem2Image,
            backGroundImage: Assets.imagesPageViewItem2BackgroundImage),
      ],
    );
  }
}
