import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.home),
                ),
                Tab(
                  child: Icon(Icons.set_meal_outlined),
                ),
                Tab(
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.red,
                child: Icon(Icons.home),
              ),
              Container(
                color: Colors.green,
                child: Icon(Icons.set_meal_outlined),
              ),
              Container(
                color: Colors.blue,
                child: Icon(Icons.person),
              ),
            ],
          ),
        ));
  }
}
