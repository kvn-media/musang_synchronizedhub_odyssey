import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forget_password_mail/forget_password_main_screen.dart';
import 'forgot_password_btn_widget.dart';


class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Make Selection!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Select one of the options given below'
                  ' to reset your password.',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: 'Email',
              subTitle: 'Reset Via Email Verification.',
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: 'Phone Number',
              subTitle: 'Reset Via Phone Verification.',
              onTap: () {},
            )
          ],
        ),
      ),);
  }

}