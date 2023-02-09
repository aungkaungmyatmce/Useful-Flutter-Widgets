import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
            text: 'Hi ',
            style: TextStyle(color: Colors.green, fontSize: 30),
            children: [
              TextSpan(text: 'To the '),
              TextSpan(
                text: 'moon ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: 'and beyond'),
            ]),
      ),
    );
  }
}
