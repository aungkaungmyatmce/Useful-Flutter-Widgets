import 'package:flutter/material.dart';

class ElevatedButtonStylingWidget extends StatelessWidget {
  const ElevatedButtonStylingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          shadowColor: Colors.red,
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(200, 80), //////// HERE
        ),
        onPressed: () {},
        child: Text('Button'),
      ),
    );
  }
}
