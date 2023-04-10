import 'package:flutter/widgets.dart';

// ignore: non_constant_identifier_names
Widget TextWidget(String? title, double? fSize, Color? fColor,
    FontWeight? fWeight, double? spacing, TextAlign? align) {
  return Text(
    title.toString(),
    textAlign: align,
    style: TextStyle(
      color: fColor,
      fontSize: fSize,
      fontWeight: fWeight,
      letterSpacing: spacing,
    ),
  );
}
