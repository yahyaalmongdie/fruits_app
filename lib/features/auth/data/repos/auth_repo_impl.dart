import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/error/custom_exception.dart';
import 'package:fruits_app/core/error/failure.dart';
import 'package:fruits_app/core/services/database_service.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/core/services/shared_preferences_singlton.dart';
import 'package:fruits_app/core/utils/backend_endpoint.dart';
import 'package:fruits_app/features/auth/data/models/user_model.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseService databaseService;

  AuthRepoImpl({
    required this.firebaseAuthServices,
    required this.databaseService,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    User? user;
    try {
      user = await firebaseAuthServices.createUserWithEmailAndPAssword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return Left(
          ServerFailure(messageAr: e.toString(), messageEn: e.toString()));
    } catch (e) {
      await deleteUser(user);

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

      var userEntity = await getUserData(uId: user.uid);
      await saveUserData(user: userEntity);
      return Right(userEntity);
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
    User? user;
    try {
      user = await firebaseAuthServices.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);

      var checkUserIsExist = await databaseService.checkIfDataExist(
          path: BackendEndpoint.checkIfUserExist, docId: user.uid);
      if (!checkUserIsExist) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }

      return Right(userEntity);
    } catch (e) {
      await deleteUser(user);
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
    User? user;
    try {
      user = await firebaseAuthServices.signInWithFacebook();

      var userEntity = UserModel.fromFirebaseUser(user);

      var checkUserIsExist = await databaseService.checkIfDataExist(
          path: BackendEndpoint.checkIfUserExist, docId: user.uid);
      if (!checkUserIsExist) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }

      return Right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log("Exception in AuthRepoImpl.signinWithFacebook ${e.toString()} ");
      return Left(
        ServerFailure(
            messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
            messageEn: "An error occurred.Please try again later."),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithApple() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithApple();
      var userEntity = UserModel.fromFirebaseUser(user);

      var checkUserIsExist = await databaseService.checkIfDataExist(
          path: BackendEndpoint.checkIfUserExist, docId: user.uid);
      if (!checkUserIsExist) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return Right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log("Exception in AuthRepoImpl.signinWithApple ${e.toString()} ");
      return Left(
        ServerFailure(
            messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
            messageEn: "An error occurred.Please try again later."),
      );
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    return await databaseService.addData(
        docId: user.uId,
        path: BackendEndpoint.addUserData,
        data: UserModel.fromEntity(user).tomap());
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthServices.deleteUser();
    }
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var data = await databaseService.getData(
        path: BackendEndpoint.getUserData, docId: uId);
    return UserModel.fromJson(data);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonEncode(UserModel.fromEntity(user).tomap());

    await Prefs.setString(kUserData, jsonData);
  }
}
