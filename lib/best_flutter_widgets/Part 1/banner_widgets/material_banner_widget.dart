import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatelessWidget {
  const MaterialBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                  content: const Text('Hi'),
                  padding: EdgeInsets.all(20),
                  leading: Icon(Icons.notifications_active_outlined),
                  elevation: 5,
                  backgroundColor: Colors.green,
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: Text('Dismiss'))
                  ]),
            );
          },
          child: Text('Open')),
    );
  }
}
