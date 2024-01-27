import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/controllers/mail_verification_controller.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/auth_repo.dart';

class MailVerificationScreen extends StatelessWidget {
  const MailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MailVerificationController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                LineAwesomeIcons.envelope_open,
                size: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Verify your email address',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'We have just send email verification link on your email. Please check email'
                'and click on the link to verify your Email address\n\n'
                'if not auto redirected after verification, click on the Continue button.',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                child: OutlinedButton(
                  onPressed: () =>
                      controller.manuallyCheckEmailVerificationStatus(),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => controller.sendVerificationEmail(),
                child: const Text(
                  'ResendEmailLink',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
              TextButton(
                  onPressed: () => AuthRepo.instance.logout(),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.alternate_long_arrow_left,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Back To Login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}