import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatelessWidget {
  const ShaderMaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 4.0,
              colors: [
                Colors.orange,
                Colors.red,
              ],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: Text(
            'This is a cool looking text',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
