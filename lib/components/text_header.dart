import 'package:flutter/material.dart';
import 'package:svoz_odpadu/variables/constants.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({Key? key, required this.text, this.color = Colors.white, this.fontSize = kDFontSizeHeader}) : super(key: key);

  final String? text;
  final Color? color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: kDFontFamilyHeader,
        color: color,
      ),
    );
  }
}