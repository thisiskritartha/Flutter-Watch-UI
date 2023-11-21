import 'package:flutter/material.dart';

const backgroundColor = Color(0x0ffcddeec);

List<BoxShadow> softUiShadow = [
  const BoxShadow(
    color: Colors.white,
    offset: Offset(-5, -5),
    spreadRadius: 1,
    blurRadius: 15,
  ),
  BoxShadow(
    color: const Color(0xff748cac).withOpacity(0.8),
    offset: const Offset(5, 5),
    spreadRadius: 1,
    blurRadius: 15,
  ),
];

const activeGradient = LinearGradient(
  colors: [
    Color(0xff4042b1),
    Color(0xff63399d),
    Color(0xff963486),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
