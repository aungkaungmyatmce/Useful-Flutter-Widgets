import 'package:flutter/material.dart';

class CheckboxGroupWidget extends StatefulWidget {
  const CheckboxGroupWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxGroupWidget> createState() => _CheckboxGroupWidgetState();
}

class _CheckboxGroupWidgetState extends State<CheckboxGroupWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
            onPressed: () {
              showBottomSheet(
                context: context,
                builder: (context) => Container(
                  height: 200,
                  color: Colors.green,
                ),
              );
            },
            child: Text('Show Bottom sheet'))
      ],
    ));
  }
}
