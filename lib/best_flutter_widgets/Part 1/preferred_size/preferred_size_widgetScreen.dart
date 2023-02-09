import 'package:flutter/material.dart';

class PreferredSizedWidgetScreen extends StatelessWidget {
  const PreferredSizedWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(80), // height from bottom of status bar
        child: Container(
          height: 120, // height from top of status bar
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.redAccent,
            Colors.orangeAccent,
          ])),
          child: SafeArea(
            child: Center(
              child: ListTile(
                title: const Text('Flutter Mapp'),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
