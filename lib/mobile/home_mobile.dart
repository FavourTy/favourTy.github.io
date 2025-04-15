import 'package:animate_do/animate_do.dart';
import 'package:favourty/constants/app_colors.dart';
import 'package:favourty/mobile/profile_Animation.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key, required this.homeKey});
  final GlobalKey homeKey;

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widget.homeKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            FadeInLeft(
              duration: const Duration(milliseconds: 1400),
              child: Text("Hola,",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 28)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FadeInLeft(
                    duration: const Duration(milliseconds: 1400),
                    child: Text("I'm",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 28))),
                SizedBox(
                  width: 10,
                ),
                FadeInDown(
                  duration: const Duration(milliseconds: 1400),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "FavourTy",
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 28),
                        colors: [
                          AppColors.darkmodeToolsColor,
                          AppColors.gradientColor2,
                          AppColors.lightModeToolsColor
                        ],
                      ),
                    ],
                    repeatForever: true,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 1400),
              child: Text("a flutter developer.",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 28)),
            ),
            SizedBox(
              height: 32,
            ),
            FadeInLeft(
                child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText("Building Scalable,Beautiful Apps",
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 15.0)),
                TyperAnimatedText("Solving Problems with Flutter Magic",
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 15.0)),
                TyperAnimatedText("Crafting User-Centric Experiences",
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 15.0)),
              ],
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              repeatForever: true,
            )),
            SizedBox(
              height: 25,
            ),
            SizedBox(height: 300, child: MobileProfileAnimation())
          ],
        ),
      ),
    );
  }
}
