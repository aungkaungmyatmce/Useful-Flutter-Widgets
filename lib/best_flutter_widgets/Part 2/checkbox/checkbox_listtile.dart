import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxListTileWidget> createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: Text('Checkbox List Tile'),
        value: _isChecked,
        onChanged: (bool? newValue) {
          print(newValue);
          setState(() {
            _isChecked = newValue;
          });
        },
        subtitle: Text('This is subtitle'),
        activeColor: Colors.orangeAccent,
        checkColor: Colors.white,
        tileColor: Colors.black12,
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
      ),
    );
  }
}
