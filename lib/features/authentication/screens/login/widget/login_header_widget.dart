import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage('assets/welcome.png'),
          height: height * 0.2,
        ),
        const Text(
          'Welcome Back',
          style: TextStyle(
            color: Color(0xFF4CC3D9),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Make it work, make it right, make it fast",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Color(0xFF4CC3D9),
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
