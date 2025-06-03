import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/functions/custom_scaffold_messenger.dart';
import 'package:fruits_app/core/widgets/custom_progress_hud.dart';
import 'package:fruits_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/signin_view_body.dart';
import 'package:fruits_app/features/home/presentation/view/pages/home_view.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SigninFailures) {
          customScaffoldMessenger(context: context, message: state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
            isLoading: state is SigninLoading ? true : false,
            child: const SigninViewBody());
      },
    );
  }
}
