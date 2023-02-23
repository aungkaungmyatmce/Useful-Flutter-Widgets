import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/images/profile.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
