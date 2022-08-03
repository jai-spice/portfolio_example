import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;

  const OutlineButton({Key? key, this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        primary: Colors.black,
        shape: const RoundedRectangleBorder(side: BorderSide(width: 2.5)),
        textStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w800, letterSpacing: 2),
      ),
      child: Text(label),
    );
  }
}
