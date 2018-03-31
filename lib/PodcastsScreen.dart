import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations/SideNavDrawer.dart';


class PodcastsScreen extends StatelessWidget {

  final Random _random = new Random();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Podcasts"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.cast,
                color: Colors.white,
              ),
              onPressed: () => print("Cast")
          ),
          new IconButton(
            icon: new Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () => print("Share")
          ),
          new PopupMenuButton(
            itemBuilder: (context) {
              return [
                new PopupMenuItem(child: new Text("Add podcast")),
                new PopupMenuItem(child: new Text("Sort order")),
                new PopupMenuItem(child: new Text("Show small grid")),
                new PopupMenuItem(child: new Text("Hide badges"))
              ];
            },
          )
        ],
      ),
      body: new Padding(
        padding: const EdgeInsets.all(1.0),
        child: new GridView.count(
          crossAxisCount: 3,
          children: new List.generate(5, (index) {
            return new DecoratedBox(
              decoration: new BoxDecoration(
                shape: BoxShape.circle
              ),
              child: new Container(
                padding: new EdgeInsets.all(0.5),
                child: new Container(
                  color: new Color.fromARGB(255, _random.nextInt(256), _random.nextInt(256), _random.nextInt(256)),
                  child: null,
                ),
              ),
            );
          }),
        ),
      ),
      drawer: new SideNav(),
    );
  }

}