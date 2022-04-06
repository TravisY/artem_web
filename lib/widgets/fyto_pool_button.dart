import 'package:artem_web/services/brightness_check.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class FytoPoolButton extends StatelessWidget {
  const FytoPoolButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => html.window.open('https://fytoboros.com/#/', 'new tab'),
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: colorSelector(context),
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  'Fyto Pool',
                  style: TextStyle(
                    color: colorSelector(context),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
