import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations/DiscoveryScreen.dart';

void main() => runApp(new Splash());

final Color ihrRed = Colors.red;

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SplashState();
  }
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Material App",
      theme: new ThemeData(
        primaryColor: Colors.deepOrange
      ),
      home: new DiscoveryScreen(),
    );
  }
}