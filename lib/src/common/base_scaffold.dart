import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onProjectsTap;
  final VoidCallback? onContactsTap;
  final double currentPage;

  const BaseScaffold(
      {Key? key,
      this.child,
      this.onProjectsTap,
      this.onContactsTap,
      required this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
          style:
              const TextStyle(color: Color(0xFFC0C0C0), fontFamily: 'FuturaPT'),
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
              if (child != null) child!,
              Container(
                alignment: Alignment.bottomRight,
                margin: const EdgeInsets.all(48.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: currentPage > 1 ? 24 : 24 * currentPage,
                      width: 1,
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                    ),
                    const SizedBox(height: 16),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'SCROLL',
                        style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 10,
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.5)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height:
                          currentPage > 1 ? (24 - 24 * (currentPage - 1)) : 24,
                      width: 1,
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                    ),
                  ],
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
                        onPressed: () {
                          launchUrlString('https://twitter.com');
                        },
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
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(72.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/logo.svg',
                        height: 48,
                        color: Theme.of(context).primaryColor,
                      ),
                      Row(
                        children: [
                          HeaderTextButton(
                            title: 'PROJECTS',
                            onPressed: onProjectsTap,
                            baseTextStyle:
                                const TextStyle(fontSize: 12, letterSpacing: 2),
                          ),
                          const SizedBox(width: 48),
                          HeaderTextButton(
                            title: 'CONTACT',
                            onPressed: onContactsTap,
                            baseTextStyle:
                                const TextStyle(fontSize: 12, letterSpacing: 2),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class HeaderTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final TextStyle baseTextStyle;

  const HeaderTextButton(
      {super.key,
      this.onPressed,
      required this.title,
      required this.baseTextStyle});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        textStyle: MaterialStateProperty.resolveWith((states) {
          final defaultTextStyle = baseTextStyle;
          const Set<MaterialState> interactiveStates = <MaterialState>{
            MaterialState.pressed,
            MaterialState.hovered,
            MaterialState.focused,
          };
          if (states.any(interactiveStates.contains)) {
            return defaultTextStyle.copyWith(fontWeight: FontWeight.bold);
          }
          return defaultTextStyle;
        }),
      ),
      child: Text(title),
    );
  }
}
