import 'package:flutter/material.dart';

class DragTargetWidget extends StatefulWidget {
  const DragTargetWidget({Key? key}) : super(key: key);

  @override
  State<DragTargetWidget> createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget> {
  Color caughtColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Draggable(
            data: Colors.orangeAccent,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text('Box'),
              ),
            ),
            feedback: Container(
              width: 150,
              height: 150,
              color: Colors.orangeAccent.withOpacity(0.5),
            ),
            onDraggableCanceled: (velocity, offset) {},
          ),
          DragTarget(
            onAccept: (Color color) {
              caughtColor = color;
            },
            builder: (context, accepted, rejected) {
              print(accepted);
              return Container(
                width: 200,
                height: 200,
                color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                child: Center(
                  child: Text('Drag here'),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
