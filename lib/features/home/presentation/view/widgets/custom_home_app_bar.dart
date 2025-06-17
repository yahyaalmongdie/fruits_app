import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("صباح الخير!..",
          textAlign: TextAlign.right,
          style: AppTextStyles.regular16(context: context)
              .copyWith(color: const Color(0xff949D9E))),
      subtitle: Text("يحيى المنجدي",
          textAlign: TextAlign.right,
          style: AppTextStyles.bold16(context: context)),
      leading: Image.asset(Assets.imagesProfileImage),
      trailing: Container(
          padding: const EdgeInsets.all(12),
          decoration: const ShapeDecoration(
              color: Color(0xffEEF8ED), shape: OvalBorder()),
          child: SvgPicture.asset(Assets.imagesNotification)),
    );
  }
}
