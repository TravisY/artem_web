import 'package:flutter/material.dart';

LinearGradient gradientSwitch(BuildContext context) {
  switch (MediaQuery.of(context).platformBrightness) {
    case Brightness.light:
      return lightGrad;
    case Brightness.dark:
      return darkGrad;
  }
}

LinearGradient lightGrad = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF1D6D21),
    Color(0xFF75BE82),
  ],
  stops: [
    0.2,
    0.8,
  ],
);

LinearGradient darkGrad = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF000000),
    Color(0xFF001B02),
    Color(0xFF002201),
  ],
  // stops: [
  //   0.2,
  //   0.8,
  // ],
);
