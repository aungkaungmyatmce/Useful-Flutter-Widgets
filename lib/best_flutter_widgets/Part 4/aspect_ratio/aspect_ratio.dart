import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      width: double.infinity,
      height: 150,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(colors: [
            Colors.deepOrange,
            Colors.yellow,
          ])),
          //color: Colors.blue,
        ),
      ),
    );
  }
}
