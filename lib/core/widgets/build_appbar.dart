import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(
      title,
      style: AppTextStyles.bold19(context: context),
      textAlign: TextAlign.center,
    ),
  );
}
