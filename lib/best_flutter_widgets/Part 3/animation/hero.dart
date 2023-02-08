import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Hero Widget'),
      trailing: Hero(
        tag: 'tag1',
        child: Icon(Icons.person),
      ),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SecondPage(),
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: 'tag1',
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ))
          ],
        ),
      ),
    );
  }
}
