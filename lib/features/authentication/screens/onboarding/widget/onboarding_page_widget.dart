import 'package:flutter/material.dart';

import '../../../models/onboarding_model.dart';
class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            model.image,
            height: size.height * 0.45,
          ),
          Column(
            children: [
               Text(
                model.title,
                style: const TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                model.subTilte,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
           Text(
            '${model.counterText}/3',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
