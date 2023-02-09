import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  const LimitedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: LimitedBox(
          maxHeight: 50, // it works only when height is unconstrained
          child: Card(
            child: ListTile(
              leading: Icon(Icons.person, size: 50),
              title: Text('FLutter'),
            ),
          ),
        ),
      ),
    );
  }
}
