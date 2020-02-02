import 'package:flutter/material.dart';
import 'dart:ui';

const primaryColor = const Color(0xFFA4C8F0);
const primaryLight = const Color(0xFF88BBDD);
const primaryDark = const Color(0xFFF88BBDD);

const secondaryColor = const Color(0xFF88BBDD);
const secondaryLight = const Color(0xFF88BBDD);
const secondaryDark = const Color(0xFF88BBDD);

const Color gradientStart = const Color(0xFFA4C8F0);
const Color gradientEnd = const Color(0xFF6699AA);

const primaryGradient = const LinearGradient(
  colors: const [gradientStart, gradientEnd],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const chatBubbleGradient = const LinearGradient(
  colors: const [Color(0xFF6699AA), Color(0xFFA4C8F0)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

const chatBubbleGradient2 = const LinearGradient(
  colors: const [Color(0xFFf4e3e3), Color(0xFFf4e3e3)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
