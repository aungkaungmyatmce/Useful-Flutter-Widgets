import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Center(
            child: Image.network('https://picsum.photos/200/300'),
          );
        } else {
          return Center(
            child: Text('Screen width is under 600'),
          );
        }
      },
    );
  }
}
