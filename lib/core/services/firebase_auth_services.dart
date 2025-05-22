import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_app/core/error/custom_exception.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
      log("Exception in FirebaseAuthServices.createUserWithEmailAndPassword ${e.toString()} code ${e.code}");

      if (e.code == 'weak-password') {
        throw CustomException(
            messageAr: "كلمة المرور ضعيفه جدا.",
            messageEn: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            messageAr: "هذا الايميل موجود من قبل",
            messageEn: "The account already exists for that email.");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            messageAr: "تأكد من اتصالك بالانترنت",
            messageEn: "be sure you are online");
      } else {
        throw CustomException(
            messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
            messageEn: "An error occurred.Please try again later.");
      }
    } catch (e) {
      log("Exception in FirebaseAuthServices.createUserWithEmailAndPassword ${e.toString()} ");

      throw CustomException(
          messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
          messageEn: "An error occurred.Please try again later.");
    }
  }

  Future<User> signinWithEmailAndPAssword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthServices.signInWithEmailAndPassword ${e.toString()} code ${e.code}");

      if (e.code == 'user-not-found') {
        throw CustomException(
            messageAr: "البريد الالكتروني او كلمة المرور غير موجود",
            messageEn: "The password provided is too weak.");
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            messageAr: "البريد الالكتروني او كلمة المرور غير صحيح",
            messageEn: "The password provided is too weak.");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            messageAr: "تأكد من اتصالك بالانترنت",
            messageEn: "be sure you are online");
      } else {
        throw CustomException(
            messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
            messageEn: "An error occurred.Please try again later.");
      }
    } catch (e) {
      log("Exception in FirebaseAuthServices.signInWithEmailAndPassword ${e.toString()} ");

      throw CustomException(
          messageAr: "حدث خطأ ما,  من فضلك حاول لاحقا",
          messageEn: "An error occurred.Please try again later.");
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}
