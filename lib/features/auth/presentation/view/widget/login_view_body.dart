import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/donot_have_account_widget.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/or_divider.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/social_login_button.dart';
import 'package:fruits_app/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: S.of(context).email,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              suffixIcon: const Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xffC9CECF),
              ),
              textInputType: TextInputType.visiblePassword,
              hintText: S.of(context).password,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(S.of(context).forget_password,
                    style: AppTextStyles.semiBold13(context: context)
                        .copyWith(color: AppColors.lightPrimaryColor))
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              btnText: S.of(context).login,
              onPressed: () {},
            ),
            const SizedBox(
              height: 33,
            ),
            const DonotHaveAccountWidget(),
            const SizedBox(
              height: 33,
            ),
            const OrDivider(),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              icon: Assets.imagesGoogleIcon,
              title: S.of(context).login_by_google,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              icon: Assets.imagesAppleIcon,
              title: S.of(context).login_by_apple,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              icon: Assets.imagesFacebookIcon,
              title: S.of(context).login_by_facebook,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
