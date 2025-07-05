import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/s.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

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
            showSkipWidget: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context)!.on_boarding_title1,
                    style: AppTextStyles.bold23(context: context)),
                const SizedBox(
                  width: 3,
                ),
                Text(S.of(context)!.fruit,
                    style: AppTextStyles.bold23(context: context)
                        .copyWith(color: AppColors.primaryColor)),
                Text(S.of(context)!.hUB,
                    style: AppTextStyles.bold23(context: context)
                        .copyWith(color: AppColors.secondaryColor)),
              ],
            ),
            body: S.of(context)!.on_boarding_body1,
            image: Assets.imagesPageViewItem1Image,
            backGroundImage: Assets.imagesPageViewItem1BackgroundImage),
        OnBoardingPageViewItem(
            showSkipWidget: false,
            title: Text(S.of(context)!.on_boarding_title2,
                style: AppTextStyles.bold23(context: context)),
            body: S.of(context)!.on_boarding_body2,
            image: Assets.imagesPageViewItem2Image,
            backGroundImage: Assets.imagesPageViewItem2BackgroundImage),
      ],
    );
  }
}
