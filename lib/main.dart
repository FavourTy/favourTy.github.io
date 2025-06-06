import 'package:favourty/constants/theme/theme_provider.dart';
import 'package:favourty/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FavourTy',
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: SplashScreen());
  }
}
