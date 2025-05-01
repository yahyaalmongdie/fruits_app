import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/error/failure.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email, required String password,
      required String name});
}
