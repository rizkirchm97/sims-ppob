import 'package:flutter/material.dart';

class Constants {
  static TextStyle boldStyle =
      const TextStyle(fontWeight: FontWeight.w800, fontSize: 24);
  static TextStyle semiBoldStyle =
      const TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
  static TextStyle regulerStyle =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12);

  static InputDecoration inputDecoration = InputDecoration(
    border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4))),
    hintStyle: regulerStyle.copyWith(
      fontSize: 14
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
  );

  static Color primaryRed = const Color(0xfff3271c);
}
