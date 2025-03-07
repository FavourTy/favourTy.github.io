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
                  width: 50,
                  height: 50,
                  child: Image.asset(AppAssets.inbox),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Thanks for stopping by! '
              'I\'m always on the lookout for new and exciting opportunities. '
              ' If you\'re interested in learning more about my work or have an opportunity you\'d like to discuss, '
              'feel free to reach out. Let\'s chat about how we can bring your project to life!',
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 7,
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
