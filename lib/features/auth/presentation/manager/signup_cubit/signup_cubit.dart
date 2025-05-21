import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits_app/core/functions/check_current_local.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repo/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignupLoading());
    var result = await authRepo.createUserWithEmailAndPassword(
        email: email, password: password, name: name);

    result.fold((failure) {
      emit(SignupFailures(
        message:
              isLocalArabic()==true? failure.messageAr:failure.messageEn));
    }, (userEntity) {
      emit(SignupSuccess(userEntity: userEntity));
    });
  }
}
