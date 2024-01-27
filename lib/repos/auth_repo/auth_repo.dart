import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/screens/mail_verification/mail_verification.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/exceptions/t_exceptions.dart';

import '../../features/authentication/screens/welcome/welcome_screen.dart';
import '../../features/core/screens/dashboard/dashboard.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();

  // variable
  final auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var phoneVerificationId = ''.obs;
  late final GoogleSignInAccount googleUser;

  @override
  void onReady() {
    // Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    FlutterNativeSplash.remove();
    // ever(firebaseUser, setInitialScreen);
    setInitialScreen(firebaseUser.value);
    // super.onReady();
  }

  // setting initial screen unload
  setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : user.emailVerified
            ? Get.offAll(() => const DashBoard())
            : Get.offAll(() => const MailVerificationScreen());
  }

  //func

  // Register by phone
  Future<void> phoneAuthentication(String phoneNo) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar('Error', 'The provided phone number is not valid.');
        } else {
          Get.snackbar('Error', 'Something went wrong, Try again.');
        }
      },
      codeSent: (verificationId, resendToken) {
        phoneVerificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        phoneVerificationId.value = verificationId;
      },
    );
  }

  // verify phone no by OTP
  Future<bool> verifyOTP(String otp) async {
    var credential = await auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: phoneVerificationId.value, smsCode: otp));

    return credential.user != null ? true : false;
  }

  // Register with email & pass
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      firebaseUser.value != null
          ? Get.offAll(() => const DashBoard())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = TExceptions.fromCode(e.code);
      throw ex.message;
    } catch (_) {
      const ex = TExceptions();
      throw ex.message;
    }
  }

  // Login with email & pass
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      firebaseUser.value != null
          ? Get.offAll(() => const DashBoard())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = TExceptions.fromCode(e.code);
      throw ex.message;
    } catch (_) {
      const ex = TExceptions();
      throw ex.message;
    }
  }

  //Verification
  Future<void> sendEmailVerification() async {
    try {
      await auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      final ex = TExceptions.fromCode(e.code);
      throw ex.message;
    } catch (_) {
      const ex = TExceptions();
      throw ex.message;
    }
  }

  // google
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      return await FirebaseAuth.instance.signInWithCredential(credential);

    } on FirebaseAuthException catch (e) {
      final ex = TExceptions.fromCode(e.code);
      throw ex.message;
    } catch (_) {
      const ex = TExceptions();
      throw ex.message;
    }
  }

  // logout
  Future<void> logout() async {
    try {
      await auth.signOut();
      await GoogleSignIn().signOut();
      Get.offAll(() => const WelcomeScreen());
    } on FirebaseException catch (e) {
      throw e.message!;
    } on FormatException catch (e) {
      throw e.message;
    } catch (e) {
      throw 'Unable to logout, Try again';
    }
  }
}
