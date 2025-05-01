import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/error/failure.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPAssword({required String email, required String password}) {
    // TODO: implement createUserWithEmailAndPAssword
    throw UnimplementedError();
  }
}