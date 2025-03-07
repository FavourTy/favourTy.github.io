import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:favourty/constants/app_assets.dart';
import 'package:flutter/material.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer(
      {super.key,
      required this.onHomePressed,
      required this.onAboutPressed,
      required this.onContactPressed,
      required this.onProjectPressed});
  final VoidCallback onHomePressed;
  final VoidCallback onAboutPressed;
  final VoidCallback onContactPressed;
  final VoidCallback onProjectPressed;
  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: widget.onHomePressed,
          child: ListTile(
            leading: SizedBox(
                width: 25, height: 30, child: Image.asset(AppAssets.home)),
            title: AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("Home",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18),
                  colors: [Colors.pink, Colors.blue, Colors.purple]),
            ], repeatForever: true),
          ),
        ),
        GestureDetector(
          onTap: widget.onAboutPressed,
          child: ListTile(
            leading: SizedBox(
                width: 15, height: 20, child: Image.asset(AppAssets.about)),
            title: AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("About",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18),
                  colors: [Colors.pink, Colors.blue, Colors.purple]),
            ], repeatForever: true),
          ),
        ),
        GestureDetector(
          onTap: widget.onProjectPressed,
          child: ListTile(
            leading: SizedBox(
                width: 15, height: 20, child: Image.asset(AppAssets.projects)),
            title: AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("Projects",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18),
                  colors: [Colors.pink, Colors.blue, Colors.purple]),
            ], repeatForever: true),
          ),
        ),
        GestureDetector(
          onTap: widget.onContactPressed,
          child: ListTile(
            leading: SizedBox(
                width: 15, height: 20, child: Image.asset(AppAssets.callme)),
            title: AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("Contact",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18),
                  colors: [Colors.pink, Colors.blue, Colors.purple]),
            ], repeatForever: true),
          ),
        ),
      ],
    );
  }
}
