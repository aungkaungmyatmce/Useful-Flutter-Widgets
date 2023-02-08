import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class AnotherFlushBarWidget extends StatelessWidget {
  const AnotherFlushBarWidget({Key? key}) : super(key: key);


   void _buildFlushBar(BuildContext context,
      {String? message, IconData? icon, Color? color}) {
    Flushbar(
      flushbarPosition: FlushbarPosition.values[FlushbarPosition.TOP.index],
      flushbarStyle: FlushbarStyle.FLOATING,
      message: message ?? '',
      icon: Icon(
        icon ?? Icons.done,
        size: 28.0,
        color: color ?? Colors.white,
      ),
      duration: const Duration(seconds: 3),
      //leftBarIndicatorColor: color ?? Colors.white,
      backgroundColor: Colors.green,
    ).show(context);
  }

   void showSuccessFlushBar(BuildContext context, String message,
      {IconData? icon}) {
    _buildFlushBar(context, message: message, icon: icon);
  }


  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ElevatedButton(
          onPressed: (){
        _buildFlushBar(context,message: 'Hi');
      }, child: Text('Open')),
    );
  }
}