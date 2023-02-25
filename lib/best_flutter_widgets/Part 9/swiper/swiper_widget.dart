import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SwiperWidget extends StatefulWidget {
  const SwiperWidget({Key? key}) : super(key: key);

  @override
  State<SwiperWidget> createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Swiper(
        // itemCount: planets.length,
        // autoplay: true,
        // pagination: new SwiperPagination(
        //     margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
        //     builder: new DotSwiperPaginationBuilder(
        //         color: Colors.white30,
        //         activeColor: Colors.white,
        //         size: 20.0,
        //         activeSize: 20.0)),

        // autoplay: true,
        // itemCount: planets.length,
        // scrollDirection: Axis.vertical,
        // pagination: new SwiperPagination(
        //     alignment: Alignment.centerRight,
        //     builder: SwiperPagination.fraction),

        // indicatorLayout: PageIndicatorLayout.SCALE,
        // autoplay: true,
        // autoplayDelay: 1000,
        // itemCount: planets.length,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
        // fade: 1.0,
        // viewportFraction: 0.85,

        itemCount: 8,
        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(activeSize: 20, space: 8),
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 100),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 100),
                          Text(
                            'Title',
                            style: TextStyle(
                              fontSize: 44,
                              color: const Color(0xff47455f),
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Sub Title',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
