import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/error/custom_exception.dart';
import 'package:fruits_app/core/error/failure.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/features/auth/data/models/user_model.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPAssword(
          email: email, password: password);

      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(
          ServerFailure(messageAr: e.toString(), messageEn: e.toString()));
    } catch (e) {
      log("Exception in AuthRepoImpl.createUserWithEmailAndPassword ${e.toString()} ");
      return Left(ServerFailure(
          messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
          messageEn: "An error occurred.Please try again later."));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthServices.signinWithEmailAndPAssword(
          email: email, password: password);

      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(
          ServerFailure(messageAr: e.toString(), messageEn: e.toString()));
    } catch (e) {
      log("Exception in AuthRepoImpl.signinWithEmailAndPAssword ${e.toString()} ");
      return Left(ServerFailure(
          messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
          messageEn: "An error occurred.Please try again later."));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log("Exception in AuthRepoImpl.signinWithGoogle ${e.toString()} ");
      return Left(
        ServerFailure(
            messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
            messageEn: "An error occurred.Please try again later."),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithFacebook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log("Exception in AuthRepoImpl.signinWithFacebook ${e.toString()} ");
      return Left(
        ServerFailure(
            messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
            messageEn: "An error occurred.Please try again later."),
      );
    }
    }
  
}
