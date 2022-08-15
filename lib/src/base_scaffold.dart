import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/src/contact/index.dart';
import 'package:portfolio/src/projects/index.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? content;

  const BaseScaffold({Key? key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
          style: const TextStyle(color: Color(0xFFC0C0C0)),
          child: Stack(
            children: [
              Container(
                color: const Color(0xFF05060B),
              ),
              Container(
                decoration: const BoxDecoration(
                  backgroundBlendMode: BlendMode.screen,
                  gradient: RadialGradient(
                    stops: [0.0, 1.0],
                    radius: 1.2,
                    tileMode: TileMode.clamp,
                    center: Alignment(-0.2, -0.8),
                    colors: [
                      Color(0xFF3A3A3A),
                      Colors.black,
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(72.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'N⍊\n⍑N',
                        style: TextStyle(
                          height: 0.75,
                          fontSize: 24,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Projects()));
                            },
                            child: const Text(
                              'PROJECTS',
                              style: TextStyle(fontSize: 12, letterSpacing: 2),
                            ),
                          ),
                          const SizedBox(width: 48),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ContactUs()));
                            },
                            child: const Text(
                              'CONTACT',
                              style: TextStyle(fontSize: 12, letterSpacing: 2),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(64.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white60,
                          size: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white60,
                          size: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white60,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (content != null) content!
            ],
          )),
    );
  }
}
