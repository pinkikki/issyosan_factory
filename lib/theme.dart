import 'package:flutter/material.dart';

ThemeData buildTheme() {
  const primaryColor = Color.fromARGB(255, 242, 132, 130);

  return ThemeData(
      textTheme: const TextTheme(),
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(side: BorderSide(color: primaryColor)),
          buttonColor: Colors.white),
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ));
}
