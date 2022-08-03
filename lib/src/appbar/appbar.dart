import 'package:flutter/material.dart';

const double kAppBarHeight = 80;

class MyAppBar extends StatelessWidget {
  final String title;

  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                letterSpacing: 8),
          )
        ],
      ),
    );
  }
}
