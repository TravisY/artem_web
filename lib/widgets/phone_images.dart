import 'package:flutter/material.dart';

import '../services/brightness_check.dart';

class PhoneImages extends StatelessWidget {
  const PhoneImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 40,
      direction: Axis.horizontal,
      //crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        Image.asset(
          isLightMode(context)
              ? 'assets/walletAddr.png'
              : 'assets/walletAddrDark.png',
        ),
        Image.asset(
          isLightMode(context)
              ? 'assets/gallery.png'
              : 'assets/galleryDark.png',
        ),
      ],
    );
  }
}
