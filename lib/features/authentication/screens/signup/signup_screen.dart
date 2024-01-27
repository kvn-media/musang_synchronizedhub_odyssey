import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/common_widgets/form/form_header_widget.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/screens/signup/widget/signup_footer_widget.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/screens/signup/widget/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child:  const Column(
              children: [
                FormHeaderWidget(
                  image: 'assets/welcome.png',
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


