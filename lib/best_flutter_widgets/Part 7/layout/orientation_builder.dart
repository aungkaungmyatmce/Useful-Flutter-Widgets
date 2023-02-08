import 'package:flutter/material.dart';

class OrientationBuilderWidget extends StatelessWidget {
  const OrientationBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Center(
          child: Text('Portrait'),
        );
      } else {
        return Center(
          child: Text('Landscape'),
        );
      }
    });
  }
}
