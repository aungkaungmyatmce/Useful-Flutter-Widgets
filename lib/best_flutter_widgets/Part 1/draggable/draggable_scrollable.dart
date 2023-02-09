import 'package:flutter/material.dart';

class DraggableScrollableWidget extends StatelessWidget {
  const DraggableScrollableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.2,
      maxChildSize: 0.75,
      //expand: false,
      builder: (context, scrollController) => Container(
        color: Colors.orangeAccent,
        child: ListView.builder(
          controller: scrollController,
          itemCount: 30,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item $index'),
          ),
        ),
      ),
    );
  }
}
