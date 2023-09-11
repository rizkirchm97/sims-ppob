import 'package:flutter/material.dart';

class ImageLoader {
  static asset(
      String name, {
        double? height,
        double? width,
      }) =>
      Image.asset(
        "assets/images/$name",
        height: height,
        width: width,
      );

  static assetImage(String name) =>
      AssetImage("assets/images/$name");

}
