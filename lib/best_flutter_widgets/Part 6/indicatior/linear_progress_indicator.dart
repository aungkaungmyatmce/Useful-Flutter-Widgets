import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatefulWidget {
  const LinearProgressIndicatorWidget({Key? key}) : super(key: key);

  @override
  State<LinearProgressIndicatorWidget> createState() =>
      _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState
    extends State<LinearProgressIndicatorWidget> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..addListener(() {
            setState(() {});
          });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: controller.value,
          ),
          SizedBox(height: 30),
          LinearProgressIndicator(),
        ],
      ),
    );
  }
}
