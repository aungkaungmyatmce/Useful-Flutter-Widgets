import 'package:flutter/material.dart';

class MouseRegionWidget extends StatefulWidget {
  const MouseRegionWidget({Key? key}) : super(key: key);

  @override
  State<MouseRegionWidget> createState() => _MouseRegionWidgetState();
}

class _MouseRegionWidgetState extends State<MouseRegionWidget> {
  int enterCount = 0;
  int exitCount = 0;
  double x = 0.0;
  double y = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onEnter: (PointerEvent event) {
          setState(() {
            enterCount++;
          });
        },
        onHover: (PointerEvent event) {
          setState(() {
            x = event.position.dx;
            y = event.position.dy;
          });
        },
        onExit: (PointerEvent event) {
          setState(() {
            exitCount++;
          });
        },
        child: Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Enters: $enterCount',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                'Exits: $exitCount',
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
      ),
    );
  }
}
