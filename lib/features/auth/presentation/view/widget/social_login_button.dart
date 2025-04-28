import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key, required this.icon, required this.title, this.onPressed});

  final String icon;
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xffDCDEDE), width: 1),
                  borderRadius: BorderRadius.circular(16))),
          onPressed: onPressed,
          child: ListTile(
            visualDensity: const VisualDensity(
              vertical: VisualDensity.minimumDensity,
            ),
            leading: SvgPicture.asset(icon),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.semiBold16(context: context),
            ),
          )),
    );
  }
}
