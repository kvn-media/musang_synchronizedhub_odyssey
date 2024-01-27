import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/auth_repo.dart';

class MailVerificationController extends GetxController {
  // static MailVerificationController get instance => Get.find();
  late Timer timer;

  @override
  void onInit() {
    super.onInit();
    sendVerificationEmail();
    setTimerForAutoRedirect();
  }

  // send or resend email verification
  Future<void> sendVerificationEmail() async {
    try {
      await AuthRepo.instance.sendEmailVerification();
    } catch (e) {
      // Get.showSnackbar(GetSnackBar(message: e.toString()));
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
    }
  }

  // set timer to check if verification completed then redirect
  void setTimerForAutoRedirect() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user!.emailVerified) {
        timer.cancel();
        AuthRepo.instance.setInitialScreen(user);
      }
    });
  }

  void manuallyCheckEmailVerificationStatus() {
    FirebaseAuth.instance.currentUser?.reload();
    final user = FirebaseAuth.instance.currentUser;
    if (user!.emailVerified) {
      AuthRepo.instance.setInitialScreen(user);
    }
  }
}
