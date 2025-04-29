import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/auth/presentation/view/pages/signup_view.dart';
import 'package:fruits_app/generated/l10n.dart';

class DonotHaveAccountWidget extends StatelessWidget {
  const DonotHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: S.of(context).You_do_not_have_account,
          style: AppTextStyles.semiBold16(context: context)
              .copyWith(color: AppColors.primaryColor)),
      TextSpan(
          text: ' ',
          style: AppTextStyles.semiBold16(context: context)
              .copyWith(color: const Color(0xff949D9E))),
      TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushNamed(context, SignupView.routeName);
            },
          text: S.of(context).please_create_account,
          style: AppTextStyles.semiBold16(context: context)
              .copyWith(color: const Color(0xff949D9E))),
    ]));
  }
}
