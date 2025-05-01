import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserWithEmailAndPAssword(
      {required String email, required String password});
}
