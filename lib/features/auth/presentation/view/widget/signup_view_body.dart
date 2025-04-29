import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field.dart';
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
              const TermsAndConditions()
            ],
          ),
        ));
  }
}
