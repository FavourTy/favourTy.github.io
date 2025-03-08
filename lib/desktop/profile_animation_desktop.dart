import 'package:flutter/material.dart';

import '../constants/app_assets.dart';

class ProfileAnimationDesktop extends StatefulWidget {
  const ProfileAnimationDesktop({super.key});

  @override
  State<ProfileAnimationDesktop> createState() =>
      _ProfileAnimationDesktopState();
}

class _ProfileAnimationDesktopState extends State<ProfileAnimationDesktop>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);
    _animation = Tween(begin: const Offset(0, 0.1), end: const Offset(0, 0.2))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.stop();
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        AppAssets.homeImg,
        width: screenWidth / 3,
        height: 390,
        fit: BoxFit.contain,
      ),
    );
  }
}
