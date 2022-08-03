import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('06 53 61 04 42'),
                  SizedBox(width: 8),
                  Text('|'),
                  SizedBox(width: 8),
                  Text('mail@helenbouman.com'),
                  SizedBox(width: 8),
                  Text('|'),
                  SizedBox(width: 8),
                  Text('Download CV')
                ],
              ),
              const SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Icon(Icons.facebook, color: Colors.white),
                SizedBox(width: 8),
                Icon(Icons.ac_unit, color: Colors.white),
                SizedBox(width: 8),
                Icon(Icons.linked_camera, color: Colors.white),
                SizedBox(width: 8),
                Icon(Icons.mail, color: Colors.white),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
