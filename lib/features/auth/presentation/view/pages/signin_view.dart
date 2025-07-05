import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/s.dart';
import 'package:fruits_app/core/services/get_it_service.dart';
import 'package:fruits_app/core/widgets/build_appbar.dart';
import 'package:fruits_app/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/signin_view_body_bloc_consumer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context: context, title: S.of(context)!.login),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
