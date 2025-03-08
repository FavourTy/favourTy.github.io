import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:favourty/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:newton_particles/newton_particles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../constants/app_colors.dart';

class AboutDesktop extends StatefulWidget {
  const AboutDesktop({
    super.key,
  });
  @override
  State<AboutDesktop> createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GradientText("About the creator",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 30, fontWeight: FontWeight.w200),
                    colors: [
                      AppColors.gradientColor2,
                      AppColors.gradientColor1,
                      AppColors.lightModeToolsColor
                    ]),
                SizedBox(
                  width: 55,
                  height: 85,
                  child: Image.asset(AppAssets.grinning),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Hola! I'm FavourTy (Favour-Tee-Why), a passionate Flutter developer recognized for adding a touch of enchantment to my code. I specialize in crafting outstanding applications and am enthusiastic about collaborating with bright minds in the Flutter development community to enhance my continuous learning journey.",
                          maxLines: 20,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "In the ever-evolving realm of Flutter development, I firmly believe that adaptability is the key to staying at the forefront. I am a self-driven individual, constantly seeking to explore new technologies and embrace emerging trends. Embracing challenges, I actively pursue opportunities to expand my skill set.",
                          maxLines: 20,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Backed by a robust coding background and an unyielding determination, I have expanded my technical expertise through internships at Kadosh Mechatronics and intensive bootcamps at HNG and She Code Africa. These experiences have equipped me with mastery of essential tools and frameworks such as Flutter, Dart, Firebase, Provider, MVVM Architecture, REST APIs, and Git. \nOne of my proudest achievements is building Student Pal, a scheduler app designed to help students efficiently manage their daily academic activities and track completed tasks. This project showcases my ability to create user-friendly, scalable, and impactful applications.",
                          maxLines: 20,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Let’s unite and create something truly exceptional in the world of Flutter development! Whether it’s building innovative apps, solving complex problems, or contributing to open-source projects, I am always ready to take on new challenges and make a meaningful impact. \nMy ultimate goal is to leverage Flutter to build applications that solve real-world problems and improve people’s lives.",
                          maxLines: 20,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: 400,
                      child: Stack(
                        children: [
                          Newton(
                            activeEffects: [
                              RainEffect(
                                particleConfiguration: ParticleConfiguration(
                                  shape: CircleShape(),
                                  size: const Size(5, 5),
                                  color: SingleParticleColor(
                                      color: Theme.of(context).dividerColor),
                                ),
                                effectConfiguration:
                                    const EffectConfiguration(),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    RotateAnimatedText('Flutter',
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headlineMedium),
                                    RotateAnimatedText('GitHub',
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headlineMedium),
                                    RotateAnimatedText(
                                      'Dart',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                    RotateAnimatedText('Firebase',
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headlineMedium),
                                  ],
                                  repeatForever: true,
                                ),
                              ),
                              Center(
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    RotateAnimatedText(
                                      'Cloud',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                    RotateAnimatedText(
                                      'c++',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                    RotateAnimatedText(
                                      'Google',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                    RotateAnimatedText(
                                      'Git',
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                  ],
                                  repeatForever: true,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
