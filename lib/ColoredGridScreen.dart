import 'dart:math';

import 'package:flutter/material.dart';


class ColoredGridScreen extends StatelessWidget {

  final Random _random = new Random();

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: new GridView.count(
        crossAxisCount: 3,
        children: new List.generate(102, (index) {
          return new Container(
            padding: new EdgeInsets.all(2.0),
            child: new Container(
              color: new Color.fromARGB(255, _random.nextInt(256), _random.nextInt(256), _random.nextInt(256)),
              child: new Center(
                child: new Text(""),
              ),
            ),
          );
        }),
      ),
    );
  }

}