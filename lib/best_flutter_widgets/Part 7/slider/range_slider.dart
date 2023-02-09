import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({Key? key}) : super(key: key);

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues values = RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Center(
      child: RangeSlider(
        values: values,
        divisions: 10,
        min: 0,
        max: 10,
        labels: labels,
        onChanged: (newValues) {
          setState(() {
            values = newValues;
          });
        },
      ),
    );
  }
}
