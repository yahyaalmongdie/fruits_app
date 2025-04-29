import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/build_appbar.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/signup_view_body.dart';
import 'package:fruits_app/generated/l10n.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const String routeName = "signupView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context: context, title: S.of(context).new_account),
        body: const SignupViewBody());
  }
}
