part of 'signin_cubit.dart';

sealed class SigninState extends Equatable {
  const SigninState();

  @override
  List<Object> get props => [];
}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UserEntity userEntity;
  const SigninSuccess({required this.userEntity});
}

final class SigninFailures extends SigninState {
  final String message;
  const SigninFailures({required this.message});
}
