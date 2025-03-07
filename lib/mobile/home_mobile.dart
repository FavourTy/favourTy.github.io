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
      height: 680,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInLeft(
              duration: const Duration(milliseconds: 1400),
              child: Text(
                "Hola,",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FadeInLeft(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      "I'm",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                SizedBox(
                  width: 10,
                ),
                FadeInDown(
                  duration: const Duration(milliseconds: 1400),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "FavourTy",
                        textStyle: Theme.of(context).textTheme.bodyMedium!,
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
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
            SizedBox(
              height: 32,
            ),
            FadeInLeft(
                child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                    "Turning Imaginations Into Interactive Reality",
                    textStyle: Theme.of(context).textTheme.headlineSmall),
                TyperAnimatedText("Bringing your ideas to life through code",
                    textStyle: Theme.of(context).textTheme.headlineSmall),
                TyperAnimatedText("Bringing your ideas to life through code",
                    textStyle: Theme.of(context).textTheme.headlineSmall),
              ],
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              repeatForever: true,
            )),
            SizedBox(
              height: 30,
            ),
            SizedBox(height: 300, child: MobileProfileAnimation())
          ],
        ),
      ),
    );
  }
}
