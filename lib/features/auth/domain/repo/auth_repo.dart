import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/error/failure.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email, required String password, required String name});
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntity>> signinWithGoogle();
  Future<Either<Failure, UserEntity>> signinWithFacebook();
  Future<Either<Failure, UserEntity>> signinWithApple();
  Future addUserData({required UserEntity user});
  Future <UserEntity> getUserData({ required String uId});
}
