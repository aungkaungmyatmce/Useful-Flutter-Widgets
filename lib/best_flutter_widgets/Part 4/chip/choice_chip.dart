import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({Key? key}) : super(key: key);

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person),
        ),
        label: Text('Choice Chip'),
        selected: _isSelected,
        selectedColor: Colors.green,
        onSelected: (newState) {
          setState(() {
            _isSelected = newState;
          });
        },
      ),
    );
  }
}
