import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        color: Colors.lightBlueAccent,
        child: FittedBox(
          child: Text(
            'This is a long text',
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
