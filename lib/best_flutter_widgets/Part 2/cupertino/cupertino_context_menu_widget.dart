import 'package:flutter/cupertino.dart';

class CupertinoContextManuWidget extends StatelessWidget {
  const CupertinoContextManuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CupertinoContextMenu(
          child: Image.network('https://picsum.photos/200/300'),
          actions: [
            CupertinoContextMenuAction(
              child: Text('Action One'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: Text('Action Two'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
