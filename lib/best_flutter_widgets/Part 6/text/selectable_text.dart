import 'package:flutter/material.dart';

class SelectableTextWidget extends StatefulWidget {
  const SelectableTextWidget({Key? key}) : super(key: key);

  @override
  State<SelectableTextWidget> createState() => _SelectableTextWidgetState();
}

class _SelectableTextWidgetState extends State<SelectableTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableText(
        'This is selectable text',
        style: TextStyle(fontSize: 30),
        onSelectionChanged: (selection, cause) {},
      ),
    );
  }
}
