import 'dart:convert';
import 'dart:developer';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_app/core/error/custom_exception.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

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
      } 
       else if (e.code == 'invalid-credential') {
        throw CustomException(
            messageAr: "البريد الالكتروني او كلمة المرور غير صحيح",
            messageEn: "The password provided is too weak.");
      }
      else if (e.code == 'network-request-failed') {
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

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }

  String generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = math.Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<User> signInWithApple() async {

    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    // Create an `OAuthCredential` from the credential returned by Apple.
    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );
 
    return (await FirebaseAuth.instance.signInWithCredential(oauthCredential)).user!;
  }

  Future deleteUser() async{

    await FirebaseAuth.instance.currentUser!.delete();

  }
  
  }
