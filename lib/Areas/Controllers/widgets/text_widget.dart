import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Widget TextWidget(String? title, double? fSize, Color? fColor,
    FontWeight? fWeight, double? spacing, TextAlign? align) {
  return Text(
    title.toString(),
    textAlign: align,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: fColor,
        fontSize: fSize,
        fontWeight: fWeight,
        letterSpacing: spacing,
      ),
    ),
  );
}
