import 'package:flutter/material.dart';

class ScrollBarListViewWidget extends StatefulWidget {
  const ScrollBarListViewWidget({Key? key}) : super(key: key);

  @override
  State<ScrollBarListViewWidget> createState() =>
      _ScrollBarListViewWidgetState();
}

class _ScrollBarListViewWidgetState extends State<ScrollBarListViewWidget> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        controller: controller,
        child: ListView.builder(
          controller: controller,
          itemCount: 50,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item: $index'),
          ),
        ));
  }
}
