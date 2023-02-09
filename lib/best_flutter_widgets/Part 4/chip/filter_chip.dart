import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({Key? key}) : super(key: key);

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilterChip(
        label: Text('Filter Chip'),
        selected: _isSelected,
        onSelected: (value) {
          setState(() {
            _isSelected = value;
          });
        },
        // avatar: Text('F'),
      ),
    );
  }
}
