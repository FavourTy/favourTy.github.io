import 'package:favourty/constants/custom_widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Row(
            children: [
              Text("FavourTy"),
              Row(
                children: [
                  GestureDetector(),
                  GestureDetector(),
                  GestureDetector(),
                  GestureDetector(),
                  GestureDetector(
                    child: Text(""),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CustomDivider()
        ],
      ),
    );
  }
}
