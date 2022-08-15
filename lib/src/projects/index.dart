import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/src/base_scaffold.dart';
import 'package:portfolio/src/common/custom_shadow.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects>
    with SingleTickerProviderStateMixin {
  late final PageController _controller;
  late final AnimationController _animationController;
  double currentPage = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400), value: 1.0);

    _controller = PageController(viewportFraction: 0.6, initialPage: 0)
      ..addListener(
        () {
          setState(() {
            final page = _controller.page;
            if (page != null) {
              currentPage = page;
              if (page == page.toInt()) {
                _animationController.reverse().whenCompleteOrCancel(() async {
                  setState(() {
                    currentIndex = page.toInt();
                  });
                  await Future.delayed(const Duration(milliseconds: 400));
                  _animationController.forward();
                });
              }
            }
          });
        },
      );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void debugFillProperties(properties) {
    properties.add(DoubleProperty('currentPage', currentPage));
    super.debugFillProperties(properties);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      content: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height / 6),
              child: PageView.builder(
                pageSnapping: true,
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  double scale = (1 - (currentPage - index).abs());
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 72.0 - 72.0 * scale),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.primaries //
                                    .elementAt(
                                  index % Colors.primaries.length,
                                ),
                                Colors.transparent
                              ]),
                        ),
                      ),
                      ClipRect(
                        clipBehavior: Clip.antiAlias,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5.0 - 5.0 * scale,
                            sigmaY: 5.0 - 5.0 * scale,
                          ),
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 100,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.75),
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, _) {
                return Opacity(
                  opacity: _animationController.value,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'KEET CAFE $currentIndex',
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2,
                          ),
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                          ' Aliquam pulvinar sit amet ex eget sollicitudin. Cras erat dui,'
                          ' bibendum eget nunc sed, finibus ullamcorper felis. Etiam finibus nisi massa,'
                          ' at porttitor ex ornare id. Maecenas viverra enim at justo rutrum convallis.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 2,
                            height: 2,
                          ),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              CustomBoxShadow(
                                blurStyle: BlurStyle.outer,
                                color: Color.lerp(
                                    Colors.black, Colors.deepPurple, 0.04)!,
                                blurRadius: 16.0,
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text("VIEW PROJECT"),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
