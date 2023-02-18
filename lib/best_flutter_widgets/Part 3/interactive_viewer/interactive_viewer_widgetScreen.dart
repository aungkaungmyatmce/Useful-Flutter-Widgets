import 'package:flutter/material.dart';

class InteractiveViewerWidgetScreen extends StatefulWidget {
  const InteractiveViewerWidgetScreen({Key? key}) : super(key: key);

  @override
  State<InteractiveViewerWidgetScreen> createState() =>
      _InteractiveViewerWidgetScreenState();
}

class _InteractiveViewerWidgetScreenState
    extends State<InteractiveViewerWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
            title: Text('App Bar'),
          ),
        ),
      ),
    );
  }
}
