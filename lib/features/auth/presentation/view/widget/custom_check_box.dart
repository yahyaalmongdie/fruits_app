import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isCheck, required this.onChecked});
  final bool isCheck;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isCheck);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isCheck ? AppColors.primaryColor : Colors.white,
            border: Border.all(
                width: 1.5,
                color: isCheck ? Colors.transparent : const Color(0xffDDDFDF))),
        child: isCheck
            ? Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset(Assets.imagesCheck),
              )
            : const SizedBox(),
      ),
    );
  }
}
