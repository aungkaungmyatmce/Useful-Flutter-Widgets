import 'package:flutter/material.dart';

class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({Key? key}) : super(key: key);

  @override
  State<SwitchListTileWidget> createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {
  bool _isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: Text('Lights'),
        value: _isSwitch,
        onChanged: (value) {
          setState(() {
            _isSwitch = value;
          });
        },
        secondary: Icon(Icons.person),
      ),
    );
  }
}
