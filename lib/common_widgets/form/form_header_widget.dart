import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageColor,
    this.imageHeight = 0.2,
    this.heightBetween,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  });

  final String image, title, subTitle;
  final Color? imageColor;
  final double? imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment!,
      children: [
        SvgPicture.asset(
          image,
          color: imageColor,
          height: size.height * imageHeight!,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: textAlign,
        ),
      ],
    );
  }
}
