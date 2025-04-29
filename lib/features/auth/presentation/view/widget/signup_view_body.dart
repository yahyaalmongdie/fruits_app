import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/donot_have_account_widget.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/terms_and_conditions.dart';
import 'package:fruits_app/generated/l10n.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                textInputType: TextInputType.name,
                hintText: S.of(context).full_name,
              ),
              const SizedBox(
                height: 16,
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
              const TermsAndConditions(),
                 const SizedBox(
                height: 30,
              ),
               CustomButton(btnText: S.of(context).create_new_account,onPressed: (){},)
            
               ,const SizedBox(
                height: 26,
              ),
                   DonotHaveAccountWidget(
                onTap: () {
                  Navigator.pop(context);
                },
                title1: S.of(context).you_have_aleardy_account,
                title2: S.of(context).login,
              ),
            ],
          ),
        ));
  }
}
