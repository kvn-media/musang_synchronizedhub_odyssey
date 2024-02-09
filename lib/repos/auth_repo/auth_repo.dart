import 'package:drift_postgres/drift_postgres.dart';
import 'package:firebase_auth/firebase_auth.dart' as Auth;
import 'package:postgres/postgres.dart' as pg;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:musang_syncronizehub_odyssey/data/drift/database.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/screens/mail_verification/mail_verification.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/exceptions/t_exceptions.dart';

import '../../features/authentication/screens/welcome/welcome_screen.dart';
import '../../features/core/controllers/atg_business_logic.dart';
import '../../features/core/controllers/flowmeter_business_logic.dart';
import '../../features/core/screens/dashboard/dashboard.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();


  // variable
  late final DriftPostgresDatabase database;
  late final ATGBusinessLogic atgLogic;
  late final FlowMeterBusinessLogic flowMeterLogic;
  final auth = Auth.FirebaseAuth.instance;
  late final Rx<Auth.User?> firebaseUser;
  var phoneVerificationId = ''.obs;
  late final GoogleSignInAccount googleUser;

  @override
  void onReady() {
    super.onReady();

    database = DriftPostgresDatabase(
      PgDatabase(
        endpoint: pg.Endpoint(
          host: getHost(),
          database: 'musangten',
          username: 'postgres',
          password: 'LycoReco',
        ),
        settings: pg.ConnectionSettings(
          sslMode: pg.SslMode.disable,
        ),
        logStatements: true,
      ),
    );

    atgLogic = ATGBusinessLogic(database);
    flowMeterLogic = FlowMeterBusinessLogic();
    // Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<Auth.User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    FlutterNativeSplash.remove();
    // ever(firebaseUser, setInitialScreen);
    setInitialScreen(firebaseUser.value);
    // super.onReady();
  }

  // setting initial screen unload
  setInitialScreen(Auth.User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : user.emailVerified
            ? Get.offAll(() => DashBoard(
                  atgLogic: atgLogic,
                  flowmeterLogic: flowMeterLogic,
                ))
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
        Auth.PhoneAuthProvider.credential(
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
          ? Get.offAll(() => DashBoard(
                atgLogic: atgLogic,
                flowmeterLogic: flowMeterLogic,
              ))
          : Get.to(() => const WelcomeScreen());
    } on Auth.FirebaseAuthException catch (e) {
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
          ? Get.offAll(() => DashBoard(
                atgLogic: atgLogic,
                flowmeterLogic: flowMeterLogic,
              ))
          : Get.to(() => const WelcomeScreen());
    } on Auth.FirebaseAuthException catch (e) {
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
    } on Auth.FirebaseAuthException catch (e) {
      final ex = TExceptions.fromCode(e.code);
      throw ex.message;
    } catch (_) {
      const ex = TExceptions();
      throw ex.message;
    }
  }

  // google
  Future<Auth.UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = Auth.GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      return await Auth.FirebaseAuth.instance.signInWithCredential(credential);
    } on Auth.FirebaseAuthException catch (e) {
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
    } on Auth.FirebaseException catch (e) {
      throw e.message!;
    } on FormatException catch (e) {
      throw e.message;
    } catch (e) {
      throw 'Unable to logout, Try again';
    }
  }
}
