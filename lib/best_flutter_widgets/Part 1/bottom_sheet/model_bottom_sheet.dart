import 'package:flutter/material.dart';

class ModelBottomSheetWidget extends StatelessWidget {
  const ModelBottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Model Bottom Sheet'),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return SizedBox(
                height: 600,
                child: Center(
                  child: ElevatedButton(
                    child: Text('Close'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
