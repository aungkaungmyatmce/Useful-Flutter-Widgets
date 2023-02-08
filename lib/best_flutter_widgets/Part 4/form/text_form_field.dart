import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  List<String> titles = ['', '', ''];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          setState(() {
            Form.of(primaryFocus!.context!).save();
          });
        },
        child: Column(
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    onSaved: (String? value) {
                      if (value != null) {
                        titles[index] = value;
                      }
                    },
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(titles[index]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
