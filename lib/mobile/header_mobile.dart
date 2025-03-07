import 'package:favourty/constants/custom_widgets/custom_divider.dart';
import 'package:favourty/constants/custom_widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile(
      {super.key, required this.isDrawerOpen, required this.onMenuPressed});
  final bool isDrawerOpen;
  final VoidCallback onMenuPressed;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "FavourTy",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Row(
                  children: [
                    CustomSwitch(),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: onMenuPressed,
                        child:
                            isDrawerOpen ? Icon(Icons.close) : Icon(Icons.menu))
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomDivider()
      ],
    );
  }
}
