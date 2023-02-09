import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({Key? key}) : super(key: key);

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        value: dropdownValue,
        icon: Icon(Icons.menu),
        items: [
          DropdownMenuItem(value: 'One', child: Text('One')),
          DropdownMenuItem(value: 'Two', child: Text('Two')),
          DropdownMenuItem(value: 'Three', child: Text('Three')),
        ],
        onChanged: (String? value) {
          dropdownValue = value!;
        },
      ),
    );
  }
}
