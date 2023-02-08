import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
          child: Center(child: Text('1')),
        ),
        Container(
          color: Colors.green,
          child: Center(child: Text('2')),
        ),
        Container(
          color: Colors.blue,
          child: Center(child: Text('3')),
        ),
      ],
    );
  }
}
