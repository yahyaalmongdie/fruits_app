import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits_app/core/functions/check_current_local.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repo/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;

  Future<void> signinWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SigninLoading());
    var result = await authRepo.signinWithEmailAndPassword(
        email: email, password: password);
    result.fold((failure) {
      emit(SigninFailures(
          message: isLocalArabic() == true
              ? failure.messageAr
              : failure.messageEn));
    }, (userEntity) {
      emit(SigninSuccess(userEntity: userEntity));
    });
  }

  Future<void> signinWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signinWithGoogle();
    result.fold((failure) {
      emit(SigninFailures(
          message: isLocalArabic() == true
              ? failure.messageAr
              : failure.messageEn));
    }, (userEntity) {
      emit(SigninSuccess(userEntity: userEntity));
    });
  }
}
