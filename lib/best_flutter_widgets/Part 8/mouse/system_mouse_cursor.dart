import 'package:flutter/material.dart';

class SystemMouseCursorWidget extends StatelessWidget {
  const SystemMouseCursorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.grab,
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
