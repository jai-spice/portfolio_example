import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 96.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                padding: const EdgeInsets.all(48.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'CONTACT',
                      style: TextStyle(
                        fontSize: 32,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                      ' Aliquam pulvinar sit amet ex eget sollicitudin. Cras erat dui,'
                      ' bibendum eget nunc sed, finibus ullamcorper felis. Etiam finibus nisi massa,'
                      ' at porttitor ex ornare id. Maecenas viverra enim at justo rutrum convallis.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        letterSpacing: 2,
                        height: 2,
                        color: Colors.white54,
                      ),
                    ),
                    ContactInfoItem(
                        title: 'Address',
                        value: 'Lorem ipsum, dolor sit, amet'),
                    ContactInfoItem(
                        title: 'Phone', value: 'Lorem ipsum, dolor sit, amet'),
                    ContactInfoItem(
                        title: 'E-mail', value: 'Lorem ipsum, dolor sit, amet'),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 48),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      color: Color.lerp(Colors.black, Colors.deepPurple, 0.04)!,
                      blurRadius: 16.0,
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.65,

                // margin:
                //     const EdgeInsets.symmetric(horizontal: 24.0, vertical: 128),
                padding: const EdgeInsets.all(48.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'CONTACT FORM',
                      style: TextStyle(
                        fontSize: 32,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Your name',
                        labelStyle: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Your phone',
                        labelStyle: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Your e-mail',
                        labelStyle: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Message',
                        labelStyle: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Color.lerp(
                              Colors.black,
                              Colors.deepPurple,
                              0.04,
                            )!,
                            blurRadius: 16.0,
                          ),
                        ],
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.mail),
                        label: const Text(
                          "SEND MESSAGE",
                          style: TextStyle(letterSpacing: 2),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInfoItem extends StatelessWidget {
  final String title;
  final String value;
  const ContactInfoItem({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            height: 2,
            fontSize: 12,
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}
