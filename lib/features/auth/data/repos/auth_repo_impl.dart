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
      return Left(ServerFailure(
        messageAr: e.toString(),
        messageEn: e.toString()));
    } catch (e) {
      return Left(
          ServerFailure(
          messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
            messageEn: "An error occurred.Please try again later."));
    }
  }
}
