import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_images.dart';

import 'on_boarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        OnBoardingPageViewItem(
            title: Row(
              children: [
                Text("مرحبًا بك في"),
                Text("Fruit"),
                Text("HUB"),
              ],
            ),
            body:
                "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
            image: Assets.imagesPageViewItem1Image,
            backGroundImage: Assets.imagesPageViewItem1BackgroundImage),
        OnBoardingPageViewItem(
            title: Text("ابحث وتسوق"),
            body:
                "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
            image: Assets.imagesPageViewItem2Image,
            backGroundImage: Assets.imagesPageViewItem2BackgroundImage),
      ],
    );
  }
}
