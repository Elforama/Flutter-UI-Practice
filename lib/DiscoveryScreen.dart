import 'package:flutter/material.dart';
import 'package:flutter_animations/ColoredGridScreen.dart';
import 'package:flutter_animations/SideNavDrawer.dart';
import 'package:flutter_animations/TrendingScreen.dart';




class DiscoveryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 6,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Discover"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.search),
                onPressed: () {
                  print("Clicked search");
                })
          ],
          bottom: new TabBar(
            tabs: [
              new Tab(text: "FEATURED"),
              new Tab(text: "TRENDING"),
              new Tab(text: "TOP"),
              new Tab(text: "NEARBY"),
              new Tab(text: "NETWORKS"),
              new Tab(text: "CATEGORIES"),
            ],
            isScrollable: true,
          ),
        ),
        drawer: new SideNav(),
        body: new TabBarView(
            children: [
              new ColoredGridScreen(),
              new TrendingScreen(),
              new TopScreen(),
              new NearbyScreen(),
              new NetworksScreen(),
              new CategoriesScreen(),
            ]
        ),
      ),
    );
  }

}