import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({super.key, required this.onPressed});

  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 32,
      onPressed: onPressed,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 4),
        child: FittedBox(
          child: Text(
            'تسوق الان',
            style: AppTextStyles.bold13(context: context)
                .copyWith(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
