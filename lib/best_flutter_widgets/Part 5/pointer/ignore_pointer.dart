import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatefulWidget {
  const IgnorePointerWidget({Key? key}) : super(key: key);

  @override
  State<IgnorePointerWidget> createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {
  bool _ignore = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _ignore = !_ignore;
              });
            },
            child: Text(_ignore ? 'Blosked' : 'Good'),
            style: ElevatedButton.styleFrom(
                backgroundColor: _ignore ? Colors.red : Colors.green),
          ),
          IgnorePointer(
            ignoring: _ignore,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Click Me'),
            ),
          )
        ],
      ),
    );
  }
}
