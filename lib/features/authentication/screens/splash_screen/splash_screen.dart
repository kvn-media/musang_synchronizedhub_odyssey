import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/fade_in_animation/fade_in_animation_controller.dart';
import 'package:musang_syncronizehub_odyssey/fade_in_animation/fade_in_animation_model.dart';

import '../../../../fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());

    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 0,
            ),
            child: Container(
              width: 100,
              height: 110,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.indigo,
              ),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(
              topBefore: 100,
              topAfter: 100,
              leftAfter: 40,
              leftBefore: -40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Learn To Code',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Free For Everyone',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomBefore: -130,
              bottomAfter: 130,
              leftAfter: -45,
              leftBefore: 45,
            ),
            child: const Image(
              image: AssetImage('assets/hacker.png'),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomBefore: -40,
              bottomAfter: 40,
              rightAfter: 10,
              rightBefore: -10,
            ),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
