import 'package:flutter/material.dart';
import 'package:na_regua_package/na_regua_package.dart';

class TestePage extends StatelessWidget {
  const TestePage({super.key});

  @override
  Widget build(BuildContext context) {
    final i = DateTime.now();
    i.toTimesTamptzFormat;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        color: context.color.primaryColor,
        child: Text(
          "data",
          style: context.textTheme.titleMedium?.copyWith(
            color: context.color.secondaryText,
          ),
        ),
      ).excludeFocus,
    );
  }
}
