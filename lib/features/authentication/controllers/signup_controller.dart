import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/models/user_model.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/auth_repo.dart';
import 'package:musang_syncronizehub_odyssey/repos/user_repo/user_repo.dart';


class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();
  final userRepo = Get.put(UserRepo());

  // Call this function from design & it will do the rest
  // void registerUser(String email, String password) {
  //   String? error = AuthRepo.instance
  //       .createUserWithEmailAndPassword(email, password) as String;
  //
  //   if (error != null) {
  //     Get.showSnackbar(GetSnackBar(message: error.toString()));
  //   }
  // }

//get phoneNo from user and pass it to auth repo for firebase auth
  Future<void> createUser() async {
    try {
      final user = UserModel(
        fullName: fullName.text.trim(),
        email: email.text.trim(),
        password: password.text.trim(),
        phoneNo: phoneNumber.text.trim(),
      );

      final auth = AuthRepo.instance;
      await auth.createUserWithEmailAndPassword(user.email, user.password);
      await userRepo.createUser(user);
      auth.setInitialScreen(auth.firebaseUser.value);

    } catch (e) {
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
    }
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    try {
     await AuthRepo.instance.phoneAuthentication(phoneNo);
    } catch (e) {
      throw e.toString();
    }
  }
}
