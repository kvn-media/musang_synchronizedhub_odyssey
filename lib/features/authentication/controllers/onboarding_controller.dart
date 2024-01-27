import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../models/onboarding_model.dart';
import '../screens/onboarding/widget/onboarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'assets/board1.png',
        title: 'Building Awesome Apps',
        subTilte: "Let's start your journey with us on this amazing "
            "and easy platform",
        counterText: '1',
        bgColor: Colors.white,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'assets/board2.png',
        title: 'Building Awesome Apps',
        subTilte: "Let's start your journey with us on this amazing "
            "and easy platform",
        counterText: '2',
        bgColor: const Color(0xfffddcdf),
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'assets/board3.png',
        title: 'Building Awesome Apps',
        subTilte: "Let's start your journey with us on this amazing "
            "and easy platform",
        counterText: '3',
        bgColor: const Color(0xffffdcbd),
      ),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
