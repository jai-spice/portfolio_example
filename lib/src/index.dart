import 'package:flutter/material.dart';
import 'package:portfolio/src/base_scaffold.dart';

class PortfolioWebsite extends StatelessWidget {
  const PortfolioWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      content: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Align(alignment: Alignment.centerLeft, child: Text("HI I'M\n")),
              Text(
                'NITIN',
                style: TextStyle(
                  height: 1,
                  fontSize: 96,
                  fontWeight: FontWeight.w900,
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
                  child: Text("\nFLUTTER DEVELOPER",
                      style: TextStyle(height: 2.5))),
            ],
          ),
        ),
      ),
    );
  }
}
