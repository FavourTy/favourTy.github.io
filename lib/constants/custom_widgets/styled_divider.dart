import 'package:flutter/material.dart';
import 'package:styled_divider/styled_divider.dart';

class MyStyledDivider extends StatefulWidget {
  const MyStyledDivider({super.key});

  @override
  State<MyStyledDivider> createState() => _MyStyledDividerState();
}

class _MyStyledDividerState extends State<MyStyledDivider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: StyledDivider(
        color: Colors.blueGrey,
        height: 50,
        thickness: 2,
        lineStyle: DividerLineStyle.dotted,
        // indent: 20,
        // endIndent: 20,
      ),
    );
  }
}
