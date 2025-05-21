import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/build_appbar.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/signin_view_body.dart';
import 'package:fruits_app/generated/l10n.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: S.of(context).login),
      body: const SigninViewBody(),
    );
  }
}
