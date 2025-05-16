import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/services/get_it_service.dart';
import 'package:fruits_app/core/widgets/build_appbar.dart';
import 'package:fruits_app/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/signup_view_body_bloc_consumer.dart';
import 'package:fruits_app/generated/l10n.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const String routeName = "signupView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
          appBar:
              buildAppBar(context: context, title: S.of(context).new_account),
          body: const SignupViewBodyBlocConsumer()),
    );
  }
}
