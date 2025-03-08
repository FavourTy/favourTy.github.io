import 'package:flutter/material.dart';

class HoverFadeDividerNavItem extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const HoverFadeDividerNavItem(
      {super.key, required this.text, required this.onTap});

  @override
  State<HoverFadeDividerNavItem> createState() =>
      _HoverFadeDividerNavItemState();
}

class _HoverFadeDividerNavItemState extends State<HoverFadeDividerNavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: _isHovered ? Colors.pink : Colors.black,
                  ),
            ),
            const SizedBox(height: 4), // Space between text and divider
            AnimatedOpacity(
              opacity: _isHovered ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Container(
                width: double.infinity, // Full width divider
                height: 2, // Height of the divider
                color: Colors.pink, // Color of the divider
              ),
            ),
          ],
        ),
      ),
    );
  }
}
