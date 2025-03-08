import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:favourty/desktop/profile_animation_desktop.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({
    super.key,
  });
  //final GlobalKey homeKey;
  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    "Hola,",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 45),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    FadeInLeft(
                        duration: const Duration(milliseconds: 1400),
                        child: Text(
                          "I'm",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 45),
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
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 45),
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
                  height: 20,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 1400),
                  child: Text(
                    "a flutter developer.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 45),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FadeInLeft(
                    child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText("Building Scalable,Beautiful Apps",
                        textStyle: Theme.of(context).textTheme.headlineSmall),
                    TyperAnimatedText("Solving Problems with Flutter Magic",
                        textStyle: Theme.of(context).textTheme.headlineSmall),
                    TyperAnimatedText("Crafting User-Centric Experiences",
                        textStyle: Theme.of(context).textTheme.headlineSmall),
                  ],
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  repeatForever: true,
                )),
              ],
            ),
            ProfileAnimationDesktop()
          ],
        ),
      ),
    );
  }
}
