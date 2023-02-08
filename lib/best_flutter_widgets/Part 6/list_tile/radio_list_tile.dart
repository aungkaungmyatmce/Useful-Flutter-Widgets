import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({Key? key}) : super(key: key);

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

List<String> options = ['Option1', 'Option2'];

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            title: Text('Option 1'),
            value: options[0],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            }),
        RadioListTile(
            title: Text('Option 2'),
            value: options[1],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            }),
      ],
    );
  }
}
