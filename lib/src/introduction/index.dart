import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "HI I'M\n",
                style: TextStyle(letterSpacing: 2),
              ),
            ),
            Text(
              'NITIN',
              style: TextStyle(
                height: 1,
                fontSize: 96,
                fontWeight: FontWeight.w900,
                fontFamily: 'FuturaPT',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 20.0,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "\nFLUTTER DEVELOPER",
                style: TextStyle(height: 2.5, letterSpacing: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
