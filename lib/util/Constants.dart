import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ClassDict {
  static const Size resolutionSize = Size(1920 * .7, 1080 * .7);
  static const Map<String, List<int>> scrollPointDict = {
    "Latest": [1050, 2000],
    "Downloads": [3, 4],
    "Forums": [4, 5]
  };
  static Map<IconData, VoidCallback> latestLinksDict = {
    Icons.mail_outline_outlined: () {},
    Icons.notification_important_outlined: () {},
    Icons.warning_amber_outlined: () {},
    Icons.emoji_emotions_outlined: () {}
  };
}

abstract class Styles {
  static const Color blackBG = Color(0xFF171717);
  // static const TextStyle textStyleAppBarText =
  //     TextStyle(fontSize: 14.0, letterSpacing: 3.0, color: Colors.white70);
  static TextStyle sectionHeadingTextStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32.0,
    letterSpacing: 0.2, //0.1
    color: Colors.white70,
  ));
  static TextStyle sectionInnerTextStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 16.0,
    letterSpacing: 0.75,
    color: Colors.white60,
    fontWeight: FontWeight.w300,
  ));
  static TextStyle majorSectionTextStyle_heading = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          fontSize: 32, fontWeight: FontWeight.w500, color: Colors.white70));
}
