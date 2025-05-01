import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_app/core/error/custom_exception.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPAssword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: "The account already exists for that email.");
      } else {
        throw CustomException(
            message: "An error occurred.Please try again later.");
      }
    } catch (e) {
      throw CustomException(
          message: "An error occurred.Please try again later.");
    }
  }
}
