import 'package:flutter/material.dart';

class ArtemLogo extends StatelessWidget {
  const ArtemLogo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        boxWithLetter(context, 'A'),
        boxWithLetter(context, 'R'),
        boxWithLetter(context, 'T'),
        boxWithLetter(context, 'E'),
        boxWithLetter(context, 'M'),
      ],
    );
  }

  Widget boxWithLetter(BuildContext context, String letter) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          letter,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}
