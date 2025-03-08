import 'package:favourty/constants/app_assets.dart';
import 'package:favourty/constants/app_colors.dart';
import 'package:favourty/mobile/profile_link_mobile.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key, required this.contactKey});
  final GlobalKey contactKey;
  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widget.contactKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GradientText("shoot me a message",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 30, fontWeight: FontWeight.w200),
                    radius: 2.5,
                    gradientType: GradientType.linear,
                    colors: [
                      AppColors.gradientColor2,
                      AppColors.gradientColor1,
                      AppColors.lightModeToolsColor
                    ]),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(AppAssets.inbox),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Thank you for visiting my portfolio! "
              "I'm always open to new opportunities, collaborations, and discussions about exciting projects. "
              "Whether you have an idea you'd like to bring to life, a problem you need solving, or just want to connect, "
              "\nI'd love to hear from you. Let's work together to create something extraordinary! "
              "Feel free to reach out via email or connect with me on social media. Looking forward to hearing from you!",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w400),
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              softWrap: true,
            ),
            SizedBox(height: 30),
            ProfileLink(),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
