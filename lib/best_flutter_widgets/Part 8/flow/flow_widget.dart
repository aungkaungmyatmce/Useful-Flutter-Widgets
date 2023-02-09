import 'package:flutter/material.dart';

class FlowWidget extends StatefulWidget {
  const FlowWidget({Key? key}) : super(key: key);

  @override
  State<FlowWidget> createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastIconClicked = Icons.notifications;

  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  @override
  void initState() {
    menuAnimation =
        AnimationController(duration: Duration(milliseconds: 250), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
      children: menuItems
          .map((icon) => Padding(
                padding: EdgeInsets.all(5),
                child: FloatingActionButton(
                  backgroundColor:
                      lastIconClicked == icon ? Colors.green : Colors.grey,
                  splashColor: Colors.green,
                  onPressed: () {
                    if (icon != Icons.menu) {
                      setState(() => lastIconClicked = icon);
                    }
                    menuAnimation.status == AnimationStatus.completed
                        ? menuAnimation.reverse()
                        : menuAnimation.forward();
                  },
                  child: Icon(icon),
                ),
              ))
          .toList(),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(i,
          transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0));
    }
  }

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }
}
