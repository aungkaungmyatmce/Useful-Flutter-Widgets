import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => GridTile(
        header: GridTileBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.person),
          title: Text('Flutter Map'),
          trailing: Icon(Icons.menu),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.favorite),
        ),
        child: Image.network(
          'https://picsum.photos/200/300',
          fit: BoxFit.cover,
        ),
      ),
      itemCount: 10,
    );
  }
}
