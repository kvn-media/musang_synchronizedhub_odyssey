import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text('Full Name'),
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.phoneNumber,
              decoration: const InputDecoration(
                label: Text('Phone Number'),
                prefixIcon: Icon(
                  Icons.numbers,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text('Password'),
                prefixIcon: Icon(
                  Icons.lock,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // email & password auth
                    // SignUpController.instance.registerUser(
                    //     controller.email.text.trim(),
                    //     controller.password.text.trim());

                    // phone auth
                    // SignUpController.instance
                    //     .phoneAuthentication(controller.phoneNumber.text.trim());

                    // final user = UserModel(
                    //   fullName: controller.fullName.text.trim(),
                    //   email: controller.email.text.trim(),
                    //   password: controller.password.text.trim(),
                    //   phoneNo: controller.phoneNumber.text.trim(),
                    // );
                    SignUpController.instance.createUser();
                    // Get.to(() => const OTPScreen());
                  }
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff272727),
                  side: const BorderSide(
                    color: Color(0xff272727),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                ),
                child: Text('Sign Up'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
