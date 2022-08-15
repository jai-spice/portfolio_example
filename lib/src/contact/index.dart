import 'package:flutter/material.dart';
import 'package:portfolio/src/base_scaffold.dart';
import 'package:portfolio/src/common/custom_shadow.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      content: Padding(
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
                      Text(
                        'Address',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        'Lorem ipsum, dolor sit, amet',
                        style: TextStyle(
                          height: 2,
                          fontSize: 12,
                          color: Colors.white54,
                        ),
                      ),
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        'Lorem ipsum, dolor sit, amet',
                        style: TextStyle(
                          height: 2,
                          fontSize: 12,
                          color: Colors.white54,
                        ),
                      ),
                      Text(
                        'E-mail',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        'Lorem ipsum, dolor sit, amet',
                        style: TextStyle(
                          height: 2,
                          fontSize: 12,
                          color: Colors.white54,
                        ),
                      )
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
                      CustomBoxShadow(
                        blurStyle: BlurStyle.outer,
                        color:
                            Color.lerp(Colors.black, Colors.deepPurple, 0.04)!,
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
                          child: const Text(
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
      ),
    );
  }
}
