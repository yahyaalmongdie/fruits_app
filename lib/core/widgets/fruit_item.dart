import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF3f5f7),
          borderRadius: BorderRadius.circular(4)),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(Assets.imagesWatermelonTest),
                const SizedBox(
                  height: 24,
                ),
                ListTile(
                  title: Text(
                    'بطيخ',
                    style: AppTextStyles.bold13(context: context),
                    textAlign: TextAlign.right,
                  ),
                  subtitle: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: '20جنية',
                          style: AppTextStyles.semiBold13(context: context)
                              .copyWith(color: AppColors.secondaryColor)),
                      TextSpan(
                          text: ' ',
                          style: AppTextStyles.semiBold13(context: context)),
                      TextSpan(
                          text: '/',
                          style: AppTextStyles.semiBold13(context: context)
                              .copyWith(color: AppColors.lightSecondaryColor)),
                      TextSpan(
                          text: ' ',
                          style: AppTextStyles.semiBold13(context: context)),
                      TextSpan(
                          text: 'الكيلو',
                          style: AppTextStyles.semiBold13(context: context)
                              .copyWith(color: AppColors.lightSecondaryColor)),
                    ]),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
