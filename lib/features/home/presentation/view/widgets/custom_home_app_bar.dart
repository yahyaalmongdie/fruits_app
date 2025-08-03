import 'package:flutter/material.dart';
import 'package:fruits_app/core/functions/get_user.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/core/widgets/notification_widget.dart'
    show NotificationWidget;

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("صباح الخير!..",
          textAlign: TextAlign.right,
          style: AppTextStyles.regular16(context: context)
              .copyWith(color: const Color(0xff949D9E))),
      subtitle: Text(getUser().name,
          textAlign: TextAlign.right,
          style: AppTextStyles.bold16(context: context)),
      leading: Image.asset(Assets.imagesProfileImage),
      trailing: const NotificationWidget(),
    );
  }
}
