import 'package:flutter/material.dart';
import 'package:portfolio/src/divider/divider.dart';
import 'package:portfolio/src/widgets/outline_button.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.73,
      color: Colors.pink[50],
      child: Center(
        child: Column(
          children: [
            const MyDivider(
              label: 'CONTACT',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'GET IN TOUCH',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Do you want to know more about me or my work?\n'
                          'Or do you have a cool project that you want me to dive into?\n'
                          'Send me an email or give me a call!',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'T ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        children: [
                          TextSpan(
                              text: '+ 31 6 53 61 04 42',
                              style: TextStyle(fontWeight: FontWeight.normal))
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'E ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        children: [
                          TextSpan(
                              text: 'mail@helenbouman.com',
                              style: TextStyle(fontWeight: FontWeight.normal))
                        ],
                      ),
                    ),
                    OutlineButton(
                      label: 'DOWNLOAD CV',
                      onPressed: () {},
                    ),
                    const Icon(Icons.upload_file),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  } // 'hey''you' = 'hey you'
}
