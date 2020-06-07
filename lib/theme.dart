import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData buildTheme() {
  const primaryColor = Color.fromARGB(255, 242, 132, 130);

  return ThemeData(
    textTheme: const TextTheme(),
    buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(side: BorderSide(color: primaryColor)),
        buttonColor: Colors.white),
    primaryColor: primaryColor,
    buttonColor: primaryColor,
    backgroundColor: primaryColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
    accentColor: primaryColor,
  );
}
