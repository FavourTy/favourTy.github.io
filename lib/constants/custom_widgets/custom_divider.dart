import 'dart:async';

import 'package:favourty/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatefulWidget {
  const CustomDivider({super.key});

  @override
  State<CustomDivider> createState() => _CustomDividerState();
}

class _CustomDividerState extends State<CustomDivider>
    with WidgetsBindingObserver {
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
    WidgetsBinding.instance.addObserver(this); // Add observer
    dividerColor = colors[currentIndex];
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
      if (mounted) {
        // Check if the widget is still mounted
        setState(() {
          currentIndex = (currentIndex + 1) % colors.length;
          dividerColor = colors[currentIndex];
        });
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); // Remove observer
    timer.cancel(); // Cancel the timer
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      timer.cancel(); // Cancel the timer when the app is paused
    } else if (state == AppLifecycleState.resumed) {
      startTimer(); // Restart the timer when the app is resumed
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!mounted) {
      return const SizedBox.shrink(); // Return an empty widget if not mounted
    }
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
