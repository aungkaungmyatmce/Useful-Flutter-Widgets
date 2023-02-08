import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({Key? key}) : super(key: key);

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${_selectedTime.hour}/${_selectedTime.minute}'),
          ElevatedButton(
              onPressed: () async {
                final TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: _selectedTime,
                  initialEntryMode: TimePickerEntryMode.dial,
                );

                if (time != null) {
                  setState(() {
                    _selectedTime = time;
                  });
                }
              },
              child: Text('Choose Time'))
        ],
      ),
    );
  }
}
