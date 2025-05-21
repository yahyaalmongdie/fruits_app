import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/functions/custom_scaffold_messenger.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/donot_have_account_widget.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/password_filed.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/terms_and_conditions.dart';
import 'package:fruits_app/generated/l10n.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, email, password;
  bool isTearmsAccepted = false;

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
                    name = value!;
                  },
                  textInputType: TextInputType.name,
                  hintText: S.of(context).full_name,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  textInputType: TextInputType.emailAddress,
                  hintText: S.of(context).email,
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
                TermsAndConditions(
                  onChange: (value) {
                    isTearmsAccepted = value;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  btnText: S.of(context).create_new_account,
                  onPressed: () {
                    if (isTearmsAccepted) {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                                email: email, password: password, name: name);
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    } else {
                      customScaffoldMessenger(
                          context: context,
                          message: S
                              .of(context)
                              .you_have_to_accept_terms_and_conidiations);
                    }
                  },
                ),
                const SizedBox(
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
          ),
        ));
  }
}
