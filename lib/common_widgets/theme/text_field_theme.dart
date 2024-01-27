import 'package:flutter/material.dart';

class TTextFormFieldTheme{
  static InputDecorationTheme lightInputDecorationTheme =
   InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      prefixIconColor: const Color(0xff272727) ,
      floatingLabelStyle: const TextStyle(color: Color(0xff272727)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(
          width: 2,
          color: Color(0xff272727),
        ),
      )
  );

  static InputDecorationTheme darkInputDecorationTheme =
   InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      prefixIconColor: const Color(0xFFFFE082) ,
      floatingLabelStyle: const TextStyle(color: Color(0xFFFFE082)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(
          width: 2,
          color: Color(0xFFFFE082),
        ),
      )
  );
}