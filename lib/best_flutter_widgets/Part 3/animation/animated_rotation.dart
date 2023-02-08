import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: Duration(seconds: 1),
              child: FlutterLogo(size: 100),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                turns += 1 / 4;
              });
            },
            child: Text('Rotate Logo'),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          )
        ],
      ),
    );
  }
}
