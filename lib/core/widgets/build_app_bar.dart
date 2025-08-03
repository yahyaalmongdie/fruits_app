import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/core/widgets/notification_widget.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: const [
      NotificationWidget(),
    ],
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_forward_ios_outlined),
    ),
    title: Text(
      title,
      style: AppTextStyles.bold19(context: context),
    ),
  );
}
