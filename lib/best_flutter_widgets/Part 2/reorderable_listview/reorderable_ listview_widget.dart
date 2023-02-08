import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewWidget> createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  List<int> items = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
        children: items
            .map((item) => ListTile(
                  key: Key('${items.indexOf(item)}'),
                  tileColor: items.indexOf(item).isOdd
                      ? Colors.white12
                      : Colors.white30,
                  title: Text('Item $item'),
                  trailing: Icon(Icons.drag_handle_sharp),
                ))
            .toList());
  }
}
