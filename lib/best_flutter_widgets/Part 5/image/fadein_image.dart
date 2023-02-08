import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FadeInImage.assetNetwork(
      placeholder: 'assets/images/home.png',
      image: 'https://picsum.photos/200/300',
      height: 200,
      width: 200,
    ));
  }
}
