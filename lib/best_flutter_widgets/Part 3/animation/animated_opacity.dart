import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double _opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _opacityLevel,
            duration: Duration(seconds: 2),
            child: FlutterLogo(
              size: 100,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacityLevel = _opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
              child: Text('Fade Logo'))
        ],
      ),
    );
  }
}
