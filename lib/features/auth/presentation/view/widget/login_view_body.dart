import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_app/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
            suffix: const Icon(
              Icons.remove_red_eye_outlined,
              color: Color(0xffC9CECF),
            ),
            textInputType: TextInputType.visiblePassword,
            hintText: S.of(context).password,
          ),
        ],
      ),
    );
  }
}
