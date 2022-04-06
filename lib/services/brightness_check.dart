import 'package:flutter/material.dart';

bool isLightMode(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.light;
}

Color colorSelector(BuildContext context) {
  return isLightMode(context)
      ? Theme.of(context).colorScheme.onPrimary
      : Theme.of(context).colorScheme.primary;
}
