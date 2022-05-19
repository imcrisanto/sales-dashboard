//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor tapaking = MaterialColor(
    0xffd64123, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffc13b20), //10%
      100: Color(0xffab341c), //20%
      200: Color(0xff962e19), //30%
      300: Color(0xff802715), //40%
      400: Color(0xff6b2112), //50%
      500: Color(0xff561a0e), //60%
      600: Color(0xff40130a), //70%
      700: Color(0xff2b0d07), //80%
      800: Color(0xff150603), //90%
      900: Color(0xff000000), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
