import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class CheckboxGroupWidget extends StatefulWidget {
  const CheckboxGroupWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxGroupWidget> createState() => _CheckboxGroupWidgetState();
}

class _CheckboxGroupWidgetState extends State<CheckboxGroupWidget> {
  final controller = GroupButtonController();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ///
        GroupButton(
          // buttonBuilder: (selected, value, context) => Text(
          //   '$value',
          //   style: TextStyle(color: selected ? Colors.green : Colors.red),
          // ),
          isRadio: false,
          onSelected: (_, index, isSelected) =>
              print('$index button is selected'),
          buttons: ["12:00", "13:00", "14:30", "18:00", "19:00", "21:40"],
          options: GroupButtonOptions(
            selectedShadow: const [],
            selectedTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.pink[900],
            ),
            selectedColor: Colors.pink[100],
            unselectedShadow: const [],
            unselectedColor: Colors.amber[100],
            unselectedTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.amber[900],
            ),
            selectedBorderColor: Colors.pink[900],
            unselectedBorderColor: Colors.amber[900],
            borderRadius: BorderRadius.circular(100),
            spacing: 10,
            runSpacing: 10,
            groupingType: GroupingType.wrap,
            direction: Axis.horizontal,
            buttonHeight: 60,
            buttonWidth: 60,
            mainGroupAlignment: MainGroupAlignment.start,
            crossGroupAlignment: CrossGroupAlignment.start,
            groupRunAlignment: GroupRunAlignment.start,
            textAlign: TextAlign.center,
            textPadding: EdgeInsets.zero,
            alignment: Alignment.center,
            elevation: 0,
          ),
        ),
        SizedBox(height: 20),

        ///
        GroupButton(
          buttonBuilder: (selected, value, context) => Text(
            '$value',
            style: TextStyle(color: selected ? Colors.green : Colors.red),
          ),
          controller: controller,
          buttons: ['12:00', '13:00', '14:00'],
          onSelected: (_, i, selected) => debugPrint('Button #$i $selected'),
        ),
        TextButton(
          onPressed: () => controller.selectIndex(1),
          child: const Text('Select 1 button'),
        ),

        ///DateTime button
        GroupButton<DateTime>(
          buttons: [DateTime(2022, 4, 9), DateTime(2022, 4, 10)],
          buttonBuilder: (selected, date, context) {
            return Text('${date.year}-${date.month}-${date.day}');
          },
        ),
      ],
    ));
  }
}
