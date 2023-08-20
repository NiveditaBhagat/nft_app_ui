import 'package:flutter/material.dart';
import 'package:flutter_nft/components/my_bottombar.dart';
import 'package:flutter_nft/components/my_tabbar.dart';
import 'package:flutter_nft/tabs/recent_tab.dart';
import 'package:flutter_nft/tabs/top_tab.dart';
import 'package:flutter_nft/theme/glass_box.dart';

import 'components/my_appbar.dart';
import 'tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _searchButtonTapped(){}
  List tabOptions= const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top",TopTab()],
  ];
  int _currentIndex=0;
  void _handleBottomIndexChange(int? index){
    setState(() {
      _currentIndex=index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: GlassBox(child: Center(child: MyBottomBar(index: 0, onTap: _handleBottomIndexChange))),
          backgroundColor: Colors.grey[300],
          body: ListView(
            children: [
              MyAppBar(
              title: 'Explore Collections' ,
              ontap: _searchButtonTapped,
             ),
      
             SizedBox(
              height: 600,
              child: MyTabBar(tabOptions: tabOptions),
             )
            ]
           
            
          ),
        ),
      ),
    );
  }
}
