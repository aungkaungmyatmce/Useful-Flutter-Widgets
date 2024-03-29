import 'package:flutter/material.dart';

class IndexStackWidget extends StatefulWidget {
  const IndexStackWidget({Key? key}) : super(key: key);

  @override
  State<IndexStackWidget> createState() => _IndexStackWidgetState();
}

class _IndexStackWidgetState extends State<IndexStackWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Text('0')),
              ElevatedButton(
                  onPressed: () {
                    print(index);
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Text('1')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Text('2')),
            ],
          ),
          IndexedStack(
            index: index,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              // Center(
              //     child: Image.network(
              //   'https://picsum.photos/200/300',
              // )),
              // Center(child: Image.network('https://picsum.photos/200/300')),
            ],
          )
        ],
      ),
    );
  }
}
