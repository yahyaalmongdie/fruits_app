import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/featured_item_button.dart'
    show FeaturedItemButton;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: itemWidth * .4,
                child: SvgPicture.asset(
                  Assets.imagesPageViewItem1Image,
                  fit: BoxFit.fill,
                )),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: svg.Svg(Assets.imagesFeaturedItemBackground))),
              width: itemWidth * .5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "عروض العيد",
                      style: AppTextStyles.regular13(context: context)
                          .copyWith(color: const Color(0xffffffff)),
                    ),
                    const Spacer(),
                    Text(
                      " خصم 25%",
                      style: AppTextStyles.bold19(context: context)
                          .copyWith(color: const Color(0xffffffff)),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    FeaturedItemButton(
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
