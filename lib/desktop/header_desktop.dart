// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:favourty/constants/custom_widgets/custom_divider.dart';
// import 'package:favourty/constants/custom_widgets/custom_switch.dart';
// import 'package:flutter/material.dart';

// class HeaderDesktop extends StatefulWidget {
//   const HeaderDesktop(
//       {super.key,
//       required this.onHomePressed,
//       required this.onAboutPressed,
//       required this.onProjectPressed,
//       required this.onContactPressed});
//   final VoidCallback onHomePressed;
//   final VoidCallback onAboutPressed;
//   final VoidCallback onProjectPressed;
//   final VoidCallback onContactPressed;

//   @override
//   State<HeaderDesktop> createState() => _HeaderDesktopState();
// }

// class _HeaderDesktopState extends State<HeaderDesktop> {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
//         SizedBox(
//           height: 50,
//           width: screenWidth,
//           child: Padding(
//             padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "FavourTy",
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 ),
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       GestureDetector(
//                         onTap: widget.onHomePressed,
//                         child: AnimatedTextKit(animatedTexts: [
//                           ColorizeAnimatedText("Home",
//                               textStyle:
//                                   Theme.of(context).textTheme.titleLarge!,
//                               colors: [
//                                 Colors.pink,
//                                 Colors.blue,
//                                 Colors.purple
//                               ]),
//                         ], repeatForever: true),
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       InkWell(
//                         onTap: widget.onAboutPressed,
//                         child: AnimatedTextKit(animatedTexts: [
//                           ColorizeAnimatedText("About",
//                               textStyle:
//                                   Theme.of(context).textTheme.titleLarge!,
//                               colors: [
//                                 Colors.pink,
//                                 Colors.blue,
//                                 Colors.purple
//                               ]),
//                         ], repeatForever: true),
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       GestureDetector(
//                         onTap: widget.onProjectPressed,
//                         child: AnimatedTextKit(animatedTexts: [
//                           ColorizeAnimatedText("Projects",
//                               textStyle:
//                                   Theme.of(context).textTheme.titleLarge!,
//                               colors: [
//                                 Colors.pink,
//                                 Colors.blue,
//                                 Colors.purple
//                               ]),
//                         ], repeatForever: true),
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       GestureDetector(
//                         onTap: widget.onContactPressed,
//                         child: AnimatedTextKit(animatedTexts: [
//                           ColorizeAnimatedText("Contact",
//                               textStyle:
//                                   Theme.of(context).textTheme.titleLarge!,
//                               colors: [
//                                 Colors.pink,
//                                 Colors.blue,
//                                 Colors.purple
//                               ]),
//                         ], repeatForever: true),
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       CustomSwitch()
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         CustomDivider()
//       ],
//     );
//   }
// }

import 'package:favourty/constants/custom_widgets/custom_divider.dart';
import 'package:favourty/constants/custom_widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({
    super.key,
    required this.onHomePressed,
    required this.onAboutPressed,
    required this.onProjectPressed,
    required this.onContactPressed,
  });

  final VoidCallback onHomePressed;
  final VoidCallback onAboutPressed;
  final VoidCallback onProjectPressed;
  final VoidCallback onContactPressed;

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: 50,
          width: screenWidth,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "FavourTy",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _buildNavItem("Home", widget.onHomePressed, context),
                      const SizedBox(width: 30),
                      _buildNavItem("About", widget.onAboutPressed, context),
                      const SizedBox(width: 30),
                      _buildNavItem(
                          "Projects", widget.onProjectPressed, context),
                      const SizedBox(width: 30),
                      _buildNavItem(
                          "Contact", widget.onContactPressed, context),
                      const SizedBox(width: 30),
                      const CustomSwitch(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }

  Widget _buildNavItem(String text, VoidCallback onTap, BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Text(text, style: Theme.of(context).textTheme.titleLarge));
  }
}
