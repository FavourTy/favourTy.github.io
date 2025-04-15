import 'package:favourty/constants/custom_widgets/styled_divider.dart';
import 'package:favourty/mobile/about_mobile.dart';
import 'package:favourty/mobile/contact_mobile.dart';
import 'package:favourty/mobile/drawer_section.dart';
import 'package:favourty/mobile/header_mobile.dart';
import 'package:favourty/mobile/home_mobile.dart';
import 'package:favourty/mobile/projects_mobile.dart';
import 'package:flutter/material.dart';

class AllMobile extends StatefulWidget {
  const AllMobile({super.key});

  @override
  State<AllMobile> createState() => _AllMobileState();
}

class _AllMobileState extends State<AllMobile> {
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _projectKey = GlobalKey();
  bool _isDrawerOpen = false;
  final ScrollController _scrollController = ScrollController();
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _scrollSectionAndCloseDrawer(GlobalKey key) {
    setState(() {
      _isDrawerOpen = false;
    });
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              HeaderMobile(
                  isDrawerOpen: _isDrawerOpen, onMenuPressed: _toggleDrawer

                  // () {
                  //   setState(() {
                  //     _isDrawerOpen = !_isDrawerOpen;
                  //   });
                  //   if (_isDrawerOpen) {
                  //     _scaffoldKey.currentState!.openEndDrawer();
                  //   } else {
                  //     _scaffoldKey.currentState!.closeEndDrawer();
                  //   }
                  // },
                  ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        children: [
                          HomeMobile(
                            homeKey: _homeKey,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          MyStyledDivider(),
                          SizedBox(
                            height: 20,
                          ),
                          AboutMobile(
                            aboutMeKey: _aboutKey,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          MyStyledDivider(),
                          SizedBox(
                            height: 20,
                          ),
                          ProjectsMobile(
                            projectkey: _projectKey,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          MyStyledDivider(),
                          SizedBox(
                            height: 20,
                          ),
                          ContactMobile(
                            contactKey: _contactKey,
                          ),
                        ],
                      )))
            ],
          ),
          if (_isDrawerOpen)
            Positioned(
                top: 58,
                right: 0,
                bottom: 0,
                width: 300,
                child: Material(
                    elevation: 16,
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    child: MobileDrawer(
                        onHomePressed: () =>
                            _scrollSectionAndCloseDrawer(_homeKey),
                        onAboutPressed: () =>
                            _scrollSectionAndCloseDrawer(_aboutKey),
                        onContactPressed: () =>
                            _scrollSectionAndCloseDrawer(_contactKey),
                        onProjectPressed: () =>
                            _scrollSectionAndCloseDrawer(_projectKey))))
        ],
      ),
    );
  }
}
