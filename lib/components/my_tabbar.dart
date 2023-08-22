import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;
  MyTabBar({required this.tabOptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicatorColor: Colors.black,
        
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          tabs: [
            Padding(
              padding: const EdgeInsets.only(bottom:8.0,left: 15,),
              child: Text(tabOptions[0][0]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(tabOptions[1][0]),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 15),
              child: Text(tabOptions[2][0]),
            ),
          ]
          ),
           Expanded(
          child: TabBarView(
            children: [
              tabOptions[0][1],
              tabOptions[1][1],
              tabOptions[2][1],
            ],
          ),
        )
      ],
    );
  }
}