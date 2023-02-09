import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: AnimatedAlign(
                alignment:
                    _isSelected ? Alignment.topLeft : Alignment.bottomRight,
                duration: Duration(seconds: 2),
                child: FlutterLogo(size: 50)),
          )),
    );
  }
}
