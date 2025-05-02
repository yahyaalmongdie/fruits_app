part of 'signup_cubit.dart';

sealed class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {}
final class SignupLoading extends SignupState {}
final class SignupFailures extends SignupState {
  final String message;
const  SignupFailures({required this.message});
}
final class SignupSuccess extends SignupState {

  final UserEntity userEntity;
  const  SignupSuccess({required this.userEntity});

}
