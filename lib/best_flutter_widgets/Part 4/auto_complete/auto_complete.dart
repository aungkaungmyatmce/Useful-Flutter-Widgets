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
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return TextField(
          decoration: InputDecoration(border: OutlineInputBorder()),
          controller: textEditingController,
          focusNode: focusNode,
          onSubmitted: (String value) {},
        );
      },
      optionsViewBuilder: (BuildContext context,
          void Function(String) onSelected, Iterable<String> options) {
        return Material(
            child: SizedBox(
                height: 200,
                child: SingleChildScrollView(
                    child: Column(
                  children: options.map((opt) {
                    return InkWell(
                        onTap: () {
                          onSelected(opt);
                        },
                        child: Container(
                            padding: EdgeInsets.only(right: 60),
                            child: Card(
                                child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(opt),
                            ))));
                  }).toList(),
                ))));
      },
    );
  }
}
