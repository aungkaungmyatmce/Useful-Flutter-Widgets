import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentedControlWidget extends StatefulWidget {
  const CupertinoSlidingSegmentedControlWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSlidingSegmentedControlWidget> createState() =>
      _CupertinoSlidingSegmentedControlWidgetState();
}

class _CupertinoSlidingSegmentedControlWidgetState
    extends State<CupertinoSlidingSegmentedControlWidget> {
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSlidingSegmentedControl(
        children: {
          0: Text('Text 0'),
          1: Text('Text 1'),
          2: Text('Text 2'),
        },
        groupValue: _sliding,
        onValueChanged: (int? newValue) {
          setState(() {
            _sliding = newValue;
          });
        },
      ),
    );
  }
}
