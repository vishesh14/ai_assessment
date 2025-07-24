import 'dart:ui';

import 'package:flutter/material.dart';

class LayoutInstruction {
  final Color backgroundColor;
  final String title;
  final BorderRadius buttonRadious;
  final Color inputFiledColor;

  LayoutInstruction(
      {required this.backgroundColor,
      required this.title,
      required this.buttonRadious,
      required this.inputFiledColor});

  factory LayoutInstruction.initial() {
    return LayoutInstruction(
        backgroundColor: Colors.blue,
        title: 'My Profile',
        buttonRadious: BorderRadius.circular(4),
        inputFiledColor: Colors.grey[200]!);
  }

  LayoutInstruction copyWith(
      {Color? backgroundColor,
      String? title,
      BorderRadius? buttonRadious,
      Color? inputFiledColor}) {
    return LayoutInstruction(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        title: title ?? this.title,
        buttonRadious: buttonRadious ?? this.buttonRadious,
        inputFiledColor: inputFiledColor ?? this.inputFiledColor);
  }
}
