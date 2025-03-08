import 'package:favourty/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileLinkDesktop extends StatefulWidget {
  const ProfileLinkDesktop({super.key});

  @override
  State<ProfileLinkDesktop> createState() => _ProfileLinkDesktopState();
}

class _ProfileLinkDesktopState extends State<ProfileLinkDesktop> {
  String selectedLink = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 15,
              height: 20,
              child: Image.asset(AppAssets.github),
            ),
            SizedBox(
              width: 3,
            ),
            buildClickableRow("Github", 'https://github.com/favourTy'),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
              height: 15,
              child: Image.asset(AppAssets.linkedln),
            ),
            SizedBox(
              width: 3,
            ),
            buildClickableRow("Linkedln",
                "https://www.linkedin.com/in/adeyemi-favour-adetayo-72800222a/"),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
              height: 12,
              child: Image.asset(AppAssets.twitter),
            ),
            SizedBox(
              width: 3,
            ),
            buildClickableRow("X", 'https://twitter.com/favvyhn'),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
              height: 15,
              child: Image.asset(AppAssets.mail),
            ),
            SizedBox(
              width: 3,
            ),
            buildClickableRow("Mail", 'mailto:@favouradetayo03@gmail.com'),
          ],
        ),
      ],
    );
  }

  Widget buildClickableRow(String text, String url) {
    return InkWell(
      onTap: () {
        // ignore:
        launch(url);
      },
      onHover: (isHovered) {
        setState(() {
          selectedLink = isHovered ? url : '';
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text,
              style: url == selectedLink
                  ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 15, decoration: TextDecoration.underline)
                  : Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w500)
              // style: AppTextStyle.headerStyle(context)
              // color: url == selectedLink ? Colors.purple : Colors.white,
              //  decoration: url == selectedLink ? TextDecoration.underline : TextDecoration.none,
              ),
          // if (url == selectedLink)
          //   const Divider(thickness: 3, color: Colors.purple),
        ],
      ),
    );
  }

  Widget cRow({required String text, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 15)),
      ),
    );
  }

  // ignore: unused_element
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
