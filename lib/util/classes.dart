import 'package:flutter/material.dart';

// final String text;
// final VoidCallback? onPressed;

// const AppBarTextButton({super.key, required this.text, this.onPressed});

class SingleChildLockedScrolView extends SingleChildScrollView {
  // Scroll
  const SingleChildLockedScrolView({super.key});
}

class AppBarTextButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final String scrollSection;
  const AppBarTextButton(
      {super.key,
      required this.text,
      required this.scrollSection,
      this.onPressed});

  @override
  State<AppBarTextButton> createState() => _AppBarTextButtonState();
}

class _AppBarTextButtonState extends State<AppBarTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0.0, right: 24.0),
      child: TextButton(
          // style: TextButton.styleFrom(foregroundColor: Colors.white24),
          onPressed:
              widget.text.compareTo(widget.scrollSection) == 0 ? null : () {},
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 3.0,
              color: widget.text.compareTo(widget.scrollSection) == 0
                  ? Colors.white24
                  : Colors.white70,
              // decorationColor: Colors.green,
              // decorationStyle: TextDecorationStyle.solid,
              // decorationThickness: 3,
              // decoration: widget.text.compareTo(widget.scrollSection) == 0
              // ? TextDecoration.underline
              // : TextDecoration.none
            ),
          )),
    );
  }
}
