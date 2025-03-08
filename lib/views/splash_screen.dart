import 'package:favourty/constants/app_assets.dart';
import 'package:favourty/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SplashScreenView(
            navigateRoute: const HomePage(),
            text: WavyAnimatedText("FavourTy",
                textStyle: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 60)),
            imageSrc: AppAssets.favDash),
      ),
    );
  }
}
