import 'package:flutter/material.dart';

class SliverAppbarWidget extends StatefulWidget {
  const SliverAppbarWidget({Key? key}) : super(key: key);

  @override
  State<SliverAppbarWidget> createState() => _SliverAppbarWidgetState();
}

class _SliverAppbarWidgetState extends State<SliverAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned:
                true, // it means that when you scroll, you'll see an appbar on the top
            floating:
                true, // it means as soon as you start scrolling, you'll see appbar coming back
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Flutter sliver'),
              background: Image.network(
                'https://picsum.photos/200/300',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          }, childCount: 20))
        ],
      ),
    );
  }
}
