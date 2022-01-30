import 'package:e_learning/constants/colors.dart';
import 'package:flutter/material.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;

  Module(
    this.iconBorder,
    this.iconBg,
    this.iconColor,
    this.icon,
    this.title,
    this.desc,
    this.moduleBorder,
    this.moduleBg,
    this.buttonColor,
    this.buttonFont,
    this.time,
    this.lesson,
  );

  static List<Module> generateModules() {
    return [
      Module(
          kAccent,
          kAccent,
          Colors.white,
          Icons.play_arrow_rounded,
          'MODULE 1',
          'How it all started.\nExplanation.',
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          kPrimaryDark,
          '35 min',
          '2 lessons'),
      Module(
          kFontLight.withOpacity(0.3),
          Colors.white,
          kFontLight.withOpacity(0.7),
          Icons.lock_outline_rounded,
          'MODULE 2',
          'What we didn\'t know\nabout Flutter.',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(0.2),
          Colors.grey,
          '12 min',
          '1 lessons'),
      Module(
          kFontLight.withOpacity(0.3),
          Colors.white,
          kFontLight.withOpacity(0.7),
          Icons.lock_outline_rounded,
          'MODULE 3',
          'Why do we need to know\nabout Flutter.',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(0.2),
          Colors.grey,
          '12 min',
          '3 lessons')
    ];
  }
}