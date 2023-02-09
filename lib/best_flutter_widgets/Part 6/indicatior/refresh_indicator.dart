import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({Key? key}) : super(key: key);

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  List<String> items = [
    'Item 1',
    'Item 2',
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.red,
      backgroundColor: Colors.blue,
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 1));
        int nextItem = items.length + 1;
        items.add('Item $nextItem');
        setState(() {});
      },
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            title: Text(items[index]),
            tileColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
