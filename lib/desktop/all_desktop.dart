import 'package:favourty/constants/custom_widgets/styled_divider.dart';
import 'package:favourty/desktop/about_desktop.dart';
import 'package:favourty/desktop/contact_desktop.dart';
import 'package:favourty/desktop/header_desktop.dart';
import 'package:favourty/desktop/home_desktop.dart';
import 'package:favourty/desktop/projects_desktop.dart';
import 'package:flutter/material.dart';

class AllDesktop extends StatefulWidget {
  const AllDesktop({super.key});

  @override
  State<AllDesktop> createState() => _AllDesktopState();
}

class _AllDesktopState extends State<AllDesktop> {
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  void _scrollSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      // Ensure the widget is rendered and part of the scrollable area
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
      print("Key has been pressed");
    } else {
      debugPrint("Context is null for key: $key");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderDesktop(
            onAboutPressed: () => _scrollSection(_aboutKey),
            onHomePressed: () => _scrollSection(_homeKey),
            onProjectPressed: () => _scrollSection(_projectKey),
            onContactPressed: () => _scrollSection(_contactKey),
          ),
          Expanded(
              child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HomeDesktop(key: _homeKey),
                SizedBox(
                  height: 80,
                ),
                MyStyledDivider(),
                SizedBox(
                  height: 20,
                ),
                AboutDesktop(
                  key: _aboutKey,
                ),
                SizedBox(
                  height: 50,
                ),
                MyStyledDivider(),
                SizedBox(
                  height: 20,
                ),
                ProjectsDesktop(
                  key: _projectKey,
                ),
                SizedBox(
                  height: 50,
                ),
                MyStyledDivider(),
                SizedBox(
                  height: 20,
                ),
                ContactDesktop(
                  key: _contactKey,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
