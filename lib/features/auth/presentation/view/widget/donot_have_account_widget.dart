import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class DonotHaveAccountWidget extends StatelessWidget {
  const DonotHaveAccountWidget({
    super.key,
    required this.onTap,
    required this.title1,
    required this.title2,
  });
  final Function() onTap;
  final String title1, title2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: title1,
          style: AppTextStyles.semiBold16(context: context)
              .copyWith(color: const Color(0xff949D9E))),
      TextSpan(
          text: ' ',
          style: AppTextStyles.semiBold16(context: context)
              .copyWith(color: const Color(0xff949D9E))),
      TextSpan(
          recognizer: TapGestureRecognizer()..onTap = onTap,
          text: title2,
          style: AppTextStyles.semiBold16(context: context)
              .copyWith(color: AppColors.primaryColor)),
    ]));
  }
}
