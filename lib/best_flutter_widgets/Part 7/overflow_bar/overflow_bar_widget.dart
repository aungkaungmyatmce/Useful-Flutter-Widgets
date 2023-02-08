import 'package:flutter/material.dart';

class OverflowBarWidget extends StatelessWidget {
  const OverflowBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: OverflowBar(
        spacing: 8,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('OverflowBar')),
          ElevatedButton(onPressed: () {}, child: Text('OverflowBar')),
          ElevatedButton(onPressed: () {}, child: Text('OverflowBar')),
          ElevatedButton(onPressed: () {}, child: Text('OverflowBar')),
          ElevatedButton(onPressed: () {}, child: Text('OverflowBar')),
        ],
      ),
    );
  }
}
