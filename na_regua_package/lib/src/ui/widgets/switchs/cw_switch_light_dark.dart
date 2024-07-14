// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:na_regua_package/fonts/icomoon_icons.dart';
import 'package:na_regua_package/na_regua_package.dart';

class CwSwitchLightDark extends StatelessWidget {
  final bool isDarkMode;
  final void Function(bool value) onChanged;

  const CwSwitchLightDark({
    required this.isDarkMode,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      thumbIcon: MaterialStatePropertyAll(
        isDarkMode ? const Icon(Icomoon.moon, color: Colors.black) : const Icon(Icomoon.sun, color: Colors.black),
      ),
      activeTrackColor: NaReguaColors.dark.onPrimaryBG,
      // activeColor: Colors.white,
      inactiveTrackColor: NaReguaColors.light.onPrimaryBG,
      // trackColor: const MaterialStatePropertyAll(Colors.blue),
      thumbColor: MaterialStatePropertyAll(isDarkMode ? Colors.white : Colors.amber),
      hoverColor: isDarkMode ? Colors.white.withOpacity(0.3) : Colors.blueAccent.withOpacity(0.3),
      value: isDarkMode,
      onChanged: onChanged,
    );
  }
}
