import 'package:flutter/material.dart';

class TabPageSelectorWidget extends StatefulWidget {
  const TabPageSelectorWidget({Key? key}) : super(key: key);

  @override
  State<TabPageSelectorWidget> createState() => _TabPageSelectorWidgetState();
}

class _TabPageSelectorWidgetState extends State<TabPageSelectorWidget>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;
  int _index = 0;

  List<Widget> widgets = [
    Icon(Icons.home),
    Icon(Icons.save),
    Icon(Icons.person),
  ];

  @override
  void initState() {
    _controller = TabController(
        length: widgets.length, initialIndex: _index, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(controller: _controller, children: widgets),
          Positioned(
              bottom: 40,
              child: TabPageSelector(
                color: Colors.red,
                selectedColor: Colors.green,
                controller: _controller,
              ))
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              _controller.animateTo(_index);
            },
            child: Icon(Icons.navigate_next),
            hoverElevation: 0,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
