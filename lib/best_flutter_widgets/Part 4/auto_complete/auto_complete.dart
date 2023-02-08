import 'package:flutter/material.dart';

class AutoCompleteWidget extends StatelessWidget {
  const AutoCompleteWidget({Key? key}) : super(key: key);

  static const List<String> listItems = ['apple', 'banana', 'mango'];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return listItems.where((String item) =>
            item.contains(textEditingValue.text.toLowerCase()));
      },
      onSelected: (String item) {
        print('$item is selected');
      },
    );
  }
}
