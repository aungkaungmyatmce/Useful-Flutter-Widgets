import 'package:flutter/material.dart';

class SliverGridWidget extends StatelessWidget {
  const SliverGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned:
              true, // that means when you scroll, you'll see an appbar on the top
          floating:
              true, // this means as soon as you start scrolling, you'll see appbar coming back
          expandedHeight: 180,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Flutter sliver'),
            background: Image.network(
              'https://picsum.photos/200/300',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              alignment: Alignment.center,
              color: Colors.red[100 * (index % 9 + 1)],
              child: Text('Item ${index + 1}'),
            ),
          ),
        )
      ],
    );
  }
}
