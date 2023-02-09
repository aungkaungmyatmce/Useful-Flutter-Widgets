import 'package:flutter/material.dart';

class InputChipWidget extends StatefulWidget {
  const InputChipWidget({Key? key}) : super(key: key);

  @override
  State<InputChipWidget> createState() => _InputChipWidgetState();
}

class _InputChipWidgetState extends State<InputChipWidget> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InputChip(
        avatar: const CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        ),
        label: Text('Input Chip'),
        onSelected: (newBool) {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        selected: _isSelected,
        selectedColor: Colors.white38,
        deleteIcon: Icon(Icons.cancel_outlined),
        onDeleted: () {},
      ),
    );
  }
}
