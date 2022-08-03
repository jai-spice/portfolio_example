import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/outline_button.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.73,
      color: Colors.teal[200],
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.32,
              padding: const EdgeInsets.symmetric(vertical: 64.0),
              margin: const EdgeInsets.symmetric(horizontal: 256.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'J',
                      style: TextStyle(
                        fontSize: 96,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        decorationThickness: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Align(
                    child: Text(
                      "Hi, I'm Jai. I create.",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 24),
                  OutlineButton(label: 'MORE ABOUT ME', onPressed: () {}),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.7, 1),
            child: SizedBox(
              height: 480,
              child: kIsWeb
                  ? Image.network('assets/images/profile.png')
                  : Image.asset(
                      'assets/images/profile.png',
                    ),
            ),
          )
        ],
      ),
    );
  }
}
