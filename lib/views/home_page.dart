import 'package:favourty/desktop/all_desktop.dart';
import 'package:favourty/mobile/all_mobile.dart';
import 'package:flutter/material.dart';
import '../constants/size.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth >= KminDesktopWidth
          ? AllDesktop()
          : AllMobile();
    });
  }
}
