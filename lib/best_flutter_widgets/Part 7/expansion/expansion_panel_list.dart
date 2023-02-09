import 'package:flutter/material.dart';

class Item {
  Item(
      {required this.headerText,
      required this.expandedText,
      this.isExpanded = false});
  String headerText;
  String expandedText;
  bool isExpanded;
}

class ExpansionPanelListWidget extends StatefulWidget {
  const ExpansionPanelListWidget({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelListWidget> createState() =>
      _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  List<Item> data = List<Item>.generate(
      10,
      (index) => Item(
            headerText: 'Item $index',
            expandedText: 'This is item number $index',
          ));
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            data[index].isExpanded = !isExpanded;
          });
        },
        children: data
            .map((item) => ExpansionPanel(
                headerBuilder: (context, isExpanded) => ListTile(
                      title: Text(item.headerText),
                    ),
                body: ListTile(
                  title: Text(item.expandedText),
                  subtitle: Text('To delete this item, click trash icon'),
                  trailing: Icon(
                    Icons.delete,
                    color: Colors.deepOrange,
                  ),
                  onTap: () {
                    data.removeWhere((element) => element == item);
                  },
                ),
                isExpanded: item.isExpanded))
            .toList(),
      ),
    );
  }
}
