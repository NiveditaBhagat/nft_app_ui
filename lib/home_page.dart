import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          
          
        ),
      ),
    );
  }
}
