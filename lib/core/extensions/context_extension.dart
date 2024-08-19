import 'package:controle_mensal/core/colors/controle_colors.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
  // PColors get color => Theme.of(this).brightness == Brightness.light ? PColors.light : PColors.dark;
  ControleColors get color =>
      Theme.of(this).extension<ControleColors>() ?? (Theme.of(this).brightness == Brightness.light ? ControleColors.light : ControleColors.dark);

  ColorScheme get colorTheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  double get spacing => 20;

  ///Mediaquery.size.width[w]
  double get w => MediaQuery.sizeOf(this).width;

  ///Mediaquery.size.height[h]
  double get h => MediaQuery.sizeOf(this).height;

  ///Only numbers regex
  RegExp get rgxNumber => RegExp(r'\d+');
}
