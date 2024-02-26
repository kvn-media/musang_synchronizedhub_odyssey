import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/common_widgets/form/form_header_widget.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/screens/signup/widget/signup_footer_widget.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/screens/signup/widget/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    // var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor:
            isDarkMode ? const Color(0xff272727) : const Color(0xFFA9A9A9),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: const Column(
              children: [
                FormHeaderWidget(
                  image: 'assets/images/logo-musang.svg',
                  title: 'Get On Board',
                  subTitle: 'Create your profile to start your Journey.',
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
