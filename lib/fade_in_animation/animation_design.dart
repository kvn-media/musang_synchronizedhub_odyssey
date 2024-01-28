import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/fade_in_animation/fade_in_animation_model.dart';

import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
   TFadeInAnimation({
    super.key,
     required this.durationInMs,  this.animate, required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
      duration:  Duration(milliseconds: durationInMs),
      top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
      left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
      bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
      right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
      child: AnimatedOpacity(
        duration:  Duration(milliseconds: durationInMs),
        opacity: controller.animate.value ? 1 :0,
        child: child,
        // child: Container(
        //   width: 100,
        //   height: 110,
        //   decoration: const BoxDecoration(
        //     shape: BoxShape.circle,
        //     color: Colors.indigo,
        //   ),
        // ),
      ),
    ),
    );
  }
}

