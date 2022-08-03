import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final String? label;
  const MyDivider({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 1,
            color: Colors.black87,
          ),
          const SizedBox(width: 36),
          if (label != null)
            Text(
              label!,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
              ),
            )
        ],
      ),
    );
  }
}
