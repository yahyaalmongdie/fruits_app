import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.name});

  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Center(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                    color: const Color(0xffffffff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: ShapeDecoration(
                          color: const Color(0xff1b5e37),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: SvgPicture.asset(image),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      name,
                      style: AppTextStyles.semiBold11(context: context)
                          .copyWith(color: AppColors.primaryColor),
                    )
                  ],
                ))));
  }
}
