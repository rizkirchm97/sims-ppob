
import 'dart:ffi';

import 'package:flutter/material.dart';

class PageTransitionType {
  static Animation<Offset> slideBottomToTop(Animation<double> animation) {
    const Offset begin = Offset(0.0, 1.0); // Define your desired begin offset
    const Offset end = Offset.zero; // Define your desired end offset

    var curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return animation.drive(tween);
  }
}