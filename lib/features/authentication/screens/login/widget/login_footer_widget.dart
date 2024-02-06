import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/controllers/login_controller.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage('assets/google.png'),
              width: 20,
            ),
            onPressed: () => controller.googleSignIn(),
            label: const Text('Sign In With Google'),
            style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Color(0xff272727),
              ),
              padding: const EdgeInsets.symmetric(vertical: 5),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: () => controller.loginUser(),
          child: Text.rich(
            TextSpan(
              text: 'Dont have an account? ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white),
              children: [
                TextSpan(
                  text: 'Sign Up'.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFF4CC3D9),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
