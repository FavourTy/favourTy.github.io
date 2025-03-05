import 'dart:async';

import 'package:favourty/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatefulWidget {
  const CustomDivider({super.key});

  @override
  State<CustomDivider> createState() => _CustomDividerState();
}

class _CustomDividerState extends State<CustomDivider> {
  late Color dividerColor;
  late Timer timer;
  final List<Color> colors = [
    AppColors.darkmodeToolsColor,
    AppColors.gradientColor2,
    AppColors.lightModeToolsColor
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    dividerColor = colors[currentIndex];
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
      setState(() {
        currentIndex = (currentIndex + 1) % colors.length;
        dividerColor = colors[currentIndex];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Divider(
        color: dividerColor,
        thickness: 2.0,
        height: 30.0,
      ),
    );
  }
}
