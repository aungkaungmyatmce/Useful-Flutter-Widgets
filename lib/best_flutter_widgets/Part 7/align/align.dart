import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: double.infinity,
        color: Colors.green,
        child: Align(
          alignment: Alignment.topLeft,
          child: FlutterLogo(size: 50),
        ),
      ),
    );
  }
}
