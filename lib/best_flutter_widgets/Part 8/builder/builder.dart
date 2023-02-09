import 'package:flutter/material.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget(),
    );
  }
}

MyWidget() => Builder(
      builder: (context) => Text(
        'Hi',
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
