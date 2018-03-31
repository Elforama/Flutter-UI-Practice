import 'package:flutter/material.dart';
import 'package:flutter_animations/DiscoveryScreen.dart';
import 'package:flutter_animations/NewReleasesScreen.dart';
import 'package:flutter_animations/PodcastsScreen.dart';




class SideNav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Jonathan"),
            accountEmail: new Text("ihrjonathan@gmail.com"),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage("https://s.tmimgcdn.com/blog/wp-content/uploads/2016/04/1-9-2.jpg?x56506"))
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.view_module),
            title: new Text("Podcasts"),
            trailing: new Text("5"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new PodcastsScreen()));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.search, color: Colors.deepOrange,),
            title: new Text(
              "Discover",
              style: new TextStyle(
                  color: Colors.deepOrange
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new DiscoveryScreen()));
            },
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.timer, color: Colors.deepOrange,),
            title: new Text("New Releases"),
            trailing: new Text("10"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new NewReleasesScreen()));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.play_arrow, color: Colors.purple,),
            title: new Text("In Progress"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          new ListTile(
            leading: new Icon(Icons.star, color: Colors.yellow,),
            title: new Text("Starred"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.add,),
            title: new Text("Add episode filter..."),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}