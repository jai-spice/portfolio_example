import 'package:flutter/material.dart';
import 'package:portfolio/src/common/base_scaffold.dart';
import 'package:portfolio/src/contact/index.dart';
import 'package:portfolio/src/introduction/index.dart';
import 'package:portfolio/src/projects/index.dart';

class PortfolioWebsite extends StatefulWidget {
  const PortfolioWebsite({Key? key}) : super(key: key);

  @override
  State<PortfolioWebsite> createState() => _PortfolioWebsiteState();
}

class _PortfolioWebsiteState extends State<PortfolioWebsite> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      currentPage: _pageController.hasClients ? _pageController.page! : 0.0,
      onContactsTap: () {
        _pageController.animateToPage(2,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut);
      },
      onProjectsTap: () {
        _pageController.animateToPage(1,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut);
      },
      child: PageView(
        controller: _pageController,
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        children: const [
          Introduction(),
          Projects(),
          ContactUs(),
        ],
      ),
    );
  }
}
