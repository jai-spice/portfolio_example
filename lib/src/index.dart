import 'package:flutter/material.dart';
import 'package:portfolio/src/appbar/appbar.dart';
import 'package:portfolio/src/contact_us/contact_us.dart';
import 'package:portfolio/src/divider/divider.dart';
import 'package:portfolio/src/footer/footer.dart';
import 'package:portfolio/src/header/header.dart';
import 'package:portfolio/src/posts/posts.dart';

class PortfolioWebsite extends StatelessWidget {
  const PortfolioWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            MyAppBar(title: 'JAI SACHDEVA'),
            Header(),
            MyDivider(label: 'PORTFOLIO'),
            Posts(),
            ContactUs(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
