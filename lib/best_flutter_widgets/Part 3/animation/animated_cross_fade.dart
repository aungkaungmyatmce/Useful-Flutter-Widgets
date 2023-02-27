import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: Text(
              'Switch',
            )),
        AnimatedCrossFade(
          firstChild: Text('Aung Kaung Myat'),
          secondChild: Text('Zar'),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 1),
        )
      ],
    );
  }
}
