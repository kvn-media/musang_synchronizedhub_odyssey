import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/auth_repo.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  // Call this function from design & it will do the rest
  Future<void> loginUser() async {
    try {
      final auth = AuthRepo.instance;
      await auth.loginWithEmailAndPassword(
          email.text.trim(), password.text.trim());
      auth.setInitialScreen(auth.firebaseUser.value);
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
    }
  }


  Future<void> googleSignIn() async {
    try {
      final auth = AuthRepo.instance;
      await auth.signInWithGoogle();
      auth.setInitialScreen(auth.firebaseUser.value);
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
    }
  }
}
