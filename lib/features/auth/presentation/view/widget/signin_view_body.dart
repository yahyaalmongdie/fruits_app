import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/s.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/view/pages/signup_view.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/donot_have_account_widget.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/or_divider.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/password_filed.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/social_login_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                textInputType: TextInputType.emailAddress,
                hintText: S.of(context)!.email,
              ),
              const SizedBox(
                height: 16,
              ),
              PasswordFiled(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(S.of(context)!.forget_password,
                      style: AppTextStyles.semiBold13(context: context)
                          .copyWith(color: AppColors.lightPrimaryColor))
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                btnText: S.of(context)!.login,
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    context.read<SigninCubit>().signinWithEmailAndPassword(
                        email: email, password: password);
                  }
                },
              ),
              const SizedBox(
                height: 33,
              ),
              DonotHaveAccountWidget(
                onTap: () {
                  Navigator.pushNamed(context, SignupView.routeName);
                },
                title1: S.of(context)!.you_do_not_have_account,
                title2: S.of(context)!.please_create_account,
              ),
              const SizedBox(
                height: 33,
              ),
              const OrDivider(),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                icon: Assets.imagesGoogleIcon,
                title: S.of(context)!.login_by_google,
                onPressed: () {
                  context.read<SigninCubit>().signinWithGoogle();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              if (Platform.isIOS)
                Column(
                  children: [
                    SocialLoginButton(
                      icon: Assets.imagesAppleIcon,
                      title: S.of(context)!.login_by_apple,
                      onPressed: () {
                        context.read<SigninCubit>().signinWithApple();
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              SocialLoginButton(
                icon: Assets.imagesFacebookIcon,
                title: S.of(context)!.login_by_facebook,
                onPressed: () {
                  context.read<SigninCubit>().signinWithFacebook();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
