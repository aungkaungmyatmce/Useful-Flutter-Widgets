import 'package:flutter/material.dart';

class SLiverToBoxAdapterWidget extends StatelessWidget {
  const SLiverToBoxAdapterWidget({Key? key}) : super(key: key);

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
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
            child: Center(
              child: Text('Sliver To Box Adapter'),
            ),
          ),
        ),
      ],
    );
  }
}
