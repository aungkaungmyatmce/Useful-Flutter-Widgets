import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRect(
            child: Banner(
              message: '25% off',
              location: BannerLocation.topEnd,
              child: Container(
                width: 300,
                height: 200,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 30),
          ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.5,
              child: Image.network('https://picsum.photos/200/300'),
            ),
          )
        ],
      ),
    );
  }
}
