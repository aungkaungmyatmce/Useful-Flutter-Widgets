import 'package:flutter/material.dart';

class TouchListenerWidget extends StatefulWidget {
  const TouchListenerWidget({Key? key}) : super(key: key);

  @override
  State<TouchListenerWidget> createState() => _TouchListenerWidgetState();
}

class _TouchListenerWidgetState extends State<TouchListenerWidget> {
  int numberOfPress = 0;
  int numberOfRelease = 0;
  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerEvent event) {
        setState(() {
          numberOfPress++;
        });
      },
      onPointerMove: (PointerEvent event) {
        setState(() {
          x = event.position.dx;
          y = event.position.dy;
        });
      },
      onPointerUp: (PointerEvent event) {
        setState(() {
          numberOfRelease++;
        });
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Column(
          children: [
            Text(
              'Presses: $numberOfPress',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              'Releases: $numberOfRelease',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              'Curser: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
